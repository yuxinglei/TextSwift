//
//  ViewController.swift
//  TextSwift
//
//  Created by 于兴雷 on 16/4/22.
//  Copyright © 2016年 tianqu. All rights reserved.
//

import UIKit


enum Student{
    case Name(String)
    case Mark(Int,Int,Int)
}



enum EnumText{
    case EnumGoodText
    case EnumBadText
    case EnumerrorText
}




enum InitalSettingType:Character{
    case CharacterX = "a" ,CharacterY = "b"
}



class ViewController: UIViewController , TextViewDeiegete {
    
    //结构体
    struct subexample {let decrementer:Int
        subscript(index:Int)->Int{return decrementer / index
        }}
    let division = subexample(decrementer:100)
    
    
    let studDetails = Student.Name("Swift");
    
    let enumText = EnumText.EnumGoodText
    
    let tagText = InitalSettingType.CharacterX.rawValue

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.textFunc();
//        
        self.initView();
        
//        self.pushVC();
        
        self.title = "在家测试github";
        
        
//        print("The number is divisible by \(division[9]) times")
//        print("The number is divisible by \(division[2]) times")
//        print("The number is divisible by \(division[3]) times")
//        print("The number is divisible by \(division[5]) times")
//        print("The number is divisible by \(division[7]) times")
//        

        //枚举
       // let studMarks = Student.Mark(98,97,95);
        switch studDetails {
        case .Name:
            print("Student name is: \(studDetails).")
        case .Mark(let Mark1, let Mark2, let Mark3):
            print("Student Marks are: \(Mark1),\(Mark2),\(Mark3).")
        }
        
        switch enumText{
        case .EnumGoodText:
            print("Student name is: \(enumText).")
        default:
            print("default")
        }
        
//        switch charText{
//            case .CharacterX
//        }
    
    }
    
    
    
    
    var num = 5;
    var name = "严浩月";
    var p1 = people();
    var m1 = Man();
    
    
    
    func textFunc()
    {
        p1.name = name;
        m1.name = "脑残";
        print(String(p1.name)+"是个"+String(m1.name));
        
        print(p1.name+"是个"+m1.name);
        
        var airports = ["TYO": "Tokyo", "DUB": "Dublin"]
        
        airports["TYO"] = "errer"
    
        print(String(airports["TYO"]))
    }
    

    func initView () {
        
        let button:UIButton = UIButton(type:.ContactAdd)
        //设置按钮位置和大小
        button.frame=CGRectMake(10, 150, 100, 30)
        //设置按钮文字
        button.setTitle("按钮", forState:UIControlState.Normal)
        button.addTarget(self,action:Selector("pushVC"),forControlEvents:UIControlEvents.TouchUpInside)
        self.view.addSubview(button);
    }
    
    func pushVC () {
        
        
        let textVC = TextViewController();
        textVC.delegete = self;
        self.navigationController?.pushViewController(textVC, animated: true)
        
    }
    
    func textDelegete(parameter: Int) {
        print(parameter)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.

    }
    
    

    



    
}

