//
//  people.swift
//  TextSwift
//
//  Created by 于兴雷 on 16/4/22.
//  Copyright © 2016年 tianqu. All rights reserved.
//

import UIKit




class people: NSObject {
    
    var name:String!
    var age : Int = 0
    
    var occupations = [
        "Malcolm": "Captain",
        "Kaylee": "Mechanic",
    ];

    func prin (){
        
        occupations["Malcolm"] = "sffdsf"
        print(occupations["Malcolm"])
    }

}

