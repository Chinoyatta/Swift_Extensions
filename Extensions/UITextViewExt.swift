//
//  UITextViewExt.swift
//
//  Created by Chino Eichi on 2017/05/08.
//  Copyright © 2017年 Chino Eichi. All rights reserved.
//

import UIKit

extension UITextView {
    
    /// 指定された文字列をリンクにします
    ///
    /// - 使い方: textView.setLinkStrs(strs: "tes", "a")
    ///
    ///
    ///
    /// タップの検知はDelegateメソッド textView(_ textView:, shouldInteractWith:, in:, interaction:) で行います
    ///
    /// - Parameter strs: 対象文字列
    func setLinkStrs(strs: [String]) {
        print(strs)
        let attribute = NSMutableAttributedString(string: self.text)
        let nsString = self.text as NSString
        strs.forEach() {
            linkStr in
            
            self.text.searchRanges(pattern: "(" + self.backSlashEscape(str: linkStr) + ")").forEach {
                strRange in
                if strRange.location != NSNotFound {
                    attribute.addAttributes([NSLinkAttributeName : linkStr.urlEncode() ?? ""], range: strRange)
                    attribute.addAttributes([NSUnderlineStyleAttributeName : 1], range: strRange)
                }
            }
        }
        attribute.addAttributes([NSFontAttributeName : self.font ?? UIFont.systemFont(ofSize: UIFont.systemFontSize)], range: NSMakeRange(0, nsString.length))
        self.attributedText = attribute
    }
    
    /// Escapeします
    ///
    /// - Parameter str: 対象文字
    /// - Returns: Escape後文字
    private func backSlashEscape(str: String) -> String {
        let beforeArr = ["\\", "*", "+", ".", "?", "{", "}", "(", ")", "[", "]", "^", "$", "-", "|", "/"]
        let afterArr = beforeArr.map {
            "\\" + $0
        }
        var tmp = str
        beforeArr.enumerated().forEach {
            tmp = tmp.replacingOccurrences(of: $0.1, with: afterArr[$0.0])
        }
        
        return tmp
    }
    
}
