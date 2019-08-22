//
//  SelectionView.swift
//  MemoryManagementPractice
//
//  Created by Sylvia Jia Fen  on 2019/8/21.
//  Copyright © 2019 Sylvia Jia Fen . All rights reserved.
//

import UIKit

class SelectionView: UIView {

   // 若將 weak var 改成 var ，關掉 NextVC (生成 selectionView 物件的地方) 不會進 deinit，表示 Memory Leak
   weak var delegate: SelectionViewDelegate? {
    
        didSet {
            
            self.backgroundColor = self.delegate?.setBackground()
        }
    }
    
    deinit {
        print("SelectionView deinited")
    }

}

protocol SelectionViewDelegate: AnyObject {
    
    func setBackground() -> UIColor
}

extension SelectionViewDelegate {
    
    func setBackground() -> UIColor {
        return .black
    }
    
}
