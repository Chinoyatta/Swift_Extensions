//
//  UITextView.swift
//
//  Created by Chino Eichi on 2017/04/27.
//  Copyright © 2017年 Chino Eichi. All rights reserved.
//

import UIKit

extension UITextView {
    
    /// テキストビューを作成する
    ///
    /// - Parameters:
    ///   - point: 位置
    ///   - delegate: デリゲート
    /// - Returns: テキストビュー
    class func create(frame: CGRect) -> UITextView {
        let textView = UITextView(frame: frame)
        textView.backgroundColor = UIColor.white
        textView.textColor = .black
        textView.isEditable = false
        textView.isSelectable = true
        textView.font = UIFont.boldSystemFont(ofSize: 17)
        //textView.layer.cornerRadius = 15
        //textView.isEditable = false
        return textView
    }
    
}
