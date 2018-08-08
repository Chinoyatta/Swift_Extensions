//
//  UIColorExt.swift
//
//  Created by Chino Eichi on 2017/04/27.
//  Copyright © 2017年 Chino Eichi. All rights reserved.
//

import UIKit

/// how to use
/// let color = UIColor.hexStr(hex: "ffffff")
extension UIColor {
    
    /// 16進文字列から色を生成
    ///
    /// - parameter hex:   16進文字列（RGBもしくはARGB）
    /// - returns: 色
    class func hexStr (hex: String) -> UIColor {
        let hexStr: String = hex.replacingOccurrences(of: "#", with: "")
        
        if hexStr.characters.count == 6 {
            if let num = Int(hexStr, radix: 16) {
                let r = Float((num >> 16) & 0xFF) / 255.0
                let g = Float((num >> 8) & 0xFF) / 255.0
                let b = Float((num) & 0xFF) / 255.0
                
                return UIColor(red: CGFloat(r), green: CGFloat(g), blue: CGFloat(b), alpha: CGFloat(1))
            }
        }
        else if hexStr.characters.count == 8 {
            if let num = Int64(hexStr, radix: 16) {
                
                let a = Float(((num >> 16) & 0xFF00) >> 8) / 255.0
                let r = Float((num >> 16) & 0xFF) / 255.0
                let g = Float((num >> 8) & 0xFF) / 255.0
                let b = Float((num) & 0xFF00) / 255.0
                
                return UIColor(red: CGFloat(r), green: CGFloat(g), blue: CGFloat(b), alpha: CGFloat(a))
                
            }
        }
        
        return UIColor.white;
    }
    
}


