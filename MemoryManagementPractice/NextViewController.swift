//
//  NextViewController.swift
//  MemoryManagementPractice
//
//  Created by Sylvia Jia Fen  on 2019/8/21.
//  Copyright © 2019 Sylvia Jia Fen . All rights reserved.
//

import UIKit

class NextViewController: UIViewController, SelectionViewDelegate {
    
//    func setBackground() -> UIColor {
//        return .yellow
//    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        selection.delegate = self
        
        selection.frame = CGRect(x: 50, y: 50, width: 100, height: 100)

        view.addSubview(selection)
        
        
        fish = Fish()
        
        fish?.closure = { [weak self] in     // 沒有 weak self/ unowned self 的情況，會 memory leak

            self?.callFish()
        }
        
        fish?.closure?()
    }
    
    var fish: Fish?
    
    func callFish() {
        print("Hello Fish")
    }
    
    let selection = SelectionView()
    
    deinit {
        print("next view deinit")
        print("nextView retain count: \(CFGetRetainCount(self))")
    }

}



