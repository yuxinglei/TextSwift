//
//  TextViewController.swift
//  TextSwift
//
//  Created by 于兴雷 on 16/4/25.
//  Copyright © 2016年 tianqu. All rights reserved.
//

import UIKit

protocol TextViewDeiegete : NSObjectProtocol{
    
    func  textDelegete(parameter:Int)
}

class TextViewController: UIViewController {
    
    var delegete :TextViewDeiegete?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.title = "text2";
        self.setVC()
        

    }
    
    func setVC () {
        
        let button:UIButton = UIButton(type:.ContactAdd)
        //设置按钮位置和大小
        button.frame=CGRectMake(10, 150, 100, 30)
        //设置按钮文字
        button.setTitle("按钮", forState:UIControlState.Normal)
        button.addTarget(self,action:Selector("popVC"),forControlEvents:UIControlEvents.TouchUpInside)
        self.view.addSubview(button);
    }


    
    func popVC () {
        
        if ((delegete) != nil){
            delegete?.textDelegete(2)
        }
        self.navigationController?.popViewControllerAnimated(true);
        
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
