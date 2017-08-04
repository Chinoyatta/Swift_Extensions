//
//  UILabelExt.swift
//  Created by Chino Eichi on 2017/04/27.
//  Copyright © 2017年 Chino Eichi. All rights reserved.
//

import UIKit

extension UILabel {
    
    /// テキストとポジションを指定してラベルを生成する
    ///
    /// - Parameters:
    ///   - text: テキスト
    ///   - point: ポジション
    /// - Returns: ラベル
    class func create(text: String, frame: CGRect, _ color: UIColor! = nil) -> UILabel{
        let label = UILabel(frame: frame)
        label.text = text
        label.textAlignment = .left
        
        guard let unwrapped  = color else {
            return label
        }
        
        label.textColor  = unwrapped
        
        return label
    }
    
    
}
