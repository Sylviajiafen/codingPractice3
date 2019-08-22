//
//  MemoryManagement.swift
//  MemoryManagementPractice
//
//  Created by Sylvia Jia Fen  on 2019/8/21.
//  Copyright © 2019 Sylvia Jia Fen . All rights reserved.
//

import Foundation


class Fish {
    
    init() {
        print("fish borned")
    }
    
    deinit {
        print("fish died")
    }
    
    func swim() {
        print("fish is alive, and it is swimming")
    }
    
    var closure: (() -> Void)?
    
}








