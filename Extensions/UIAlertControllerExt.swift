//
//  UIAlertControllerExt.swift
//
//  Created by Chino Eichi on 2017/04/27.
//  Copyright © 2017年 Chino Eichi. All rights reserved.
//

import UIKit


extension UIAlertController {
    
    /// アラートを表示します
    ///
    /// - Parameters:
    ///   - viewController: 表示先
    ///   - title: タイトル
    ///   - message: メッセージ
    ///   - buttonTitle: ボタンタイトル
    static func show(for viewController: UIViewController, title: String, message: String, buttonTitle: String) {
        // アラート設定
        let myAlert: UIAlertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        // OKのアクションを作成する.
        let myOkAction = UIAlertAction(title: buttonTitle, style: .default)
        // OKのActionを追加する.
        myAlert.addAction(myOkAction)
        // UIAlertを発動する.
        viewController.present(myAlert, animated: true, completion: nil)
    }
}

