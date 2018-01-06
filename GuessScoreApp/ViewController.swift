//
//  ViewController.swift
//  GuessScoreApp
//
//  Created by s247 on 2018/01/04.
//  Copyright © 2018年 ami. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //点数を入力するテキストフィールド
    @IBOutlet weak var textField: UITextField!
    
    //UIImageViewを紐付ける
    @IBOutlet weak var imageView: UIImageView!

    //画像のインスタンスを作成
    var topImage:UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        topImage = UIImage(named:"100ten")
        imageView.image = topImage
    }

    //ボタンが押されたときの処理
    @IBAction func tapCheck(_ sender: Any) {
        
//        if let num = Int(textField.text!) {
//            
//        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

