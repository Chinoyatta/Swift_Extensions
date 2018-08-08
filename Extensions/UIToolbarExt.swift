//
//  UIToolbarExt.swift
//
//  Created by Chino Eichi on 2017/04/27.
//  Copyright © 2017年 Chino Eichi. All rights reserved.
//

import UIKit

extension UIToolbar {
    
    /// ツールバーを生成する
    ///
    /// - Parameters:
    ///   - point: ポジション
    /// - Returns: ツールバー
    class func create(frame:CGRect) -> UIToolbar {
        
        let toolbar = UIToolbar(frame: frame)
        toolbar.barStyle = .blackTranslucent
        toolbar.tintColor = UIColor.white
        toolbar.backgroundColor = UIColor.white
        
        return toolbar
    }
}
