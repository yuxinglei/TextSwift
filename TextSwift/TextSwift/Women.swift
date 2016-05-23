//
//  Women.swift
//  TextSwift
//
//  Created by 于兴雷 on 16/4/22.
//  Copyright © 2016年 tianqu. All rights reserved.
//

import UIKit

extension String {
    func reverseString() -> String {
        // do something if necessary
        return "123";
    }
}

class Women: people {
    

    var str : String = "345"
    
    func textStr (){
        
        str.reverseString();
    }
    
   
    private var daysArry  = ["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","saturday"];
    
    private var days = ["Monday","Monday","Monday","Monday"];
    
    subscript(index:Int)->String{get{return days[index]}set(newValue){self.days[index] = newValue}}


}
