//
//  UIButtonExt.swift
//
//  Created by Chino Eichi on 2017/04/27.
//  Copyright © 2017年 Chino Eichi. All rights reserved.
//

import UIKit

extension UIButton {

    /// ボタンをを生成する
    ///
    /// - Parameters:
    ///   - title: タイトル
    ///   - point: ポジション
    ///   - color:色
    /// - Returns: ボタン
    class func create(frame:CGRect,title: String, _ color: UIColor! = nil) -> UIButton {
        let button = UIButton()
        button.frame = frame
        button.setTitle(title, for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.layer.masksToBounds = true
        button.adjustsImageWhenHighlighted = true
        
        guard let unwrapped  = color else {
            return button
        }
        
        button.backgroundColor = unwrapped
        
        return button
    }
}
