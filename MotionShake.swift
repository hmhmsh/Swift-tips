//
//  MotionShake.swift
//  Swift-tips
//
//  Created by 長谷川瞬哉 on 2016/02/16.
//  Copyright © 2016年 長谷川瞬哉. All rights reserved.
//

import Foundation
import UIKit

protocol MotionShakeDelegate {
    func motionBegan()
    func motionEnded()
}

class MotionShake: UIResponder {

    var delegate: MotionShakeDelegate!
    
    override func canBecomeFirstResponder() -> Bool {
        return true
    }
    
    override func motionBegan(motion: UIEventSubtype, withEvent event: UIEvent?) {
        if event!.type == UIEventType.Motion && event!.subtype == UIEventSubtype.MotionShake {
            // シェイク動作始まり時の処理
            delegate?.motionBegan()
        }
    }
    
    override func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent?) {
        if event!.type == UIEventType.Motion && event!.subtype == UIEventSubtype.MotionShake {
            // シェイク動作終了時の処理
            delegate?.motionEnded()
        }
    }
}