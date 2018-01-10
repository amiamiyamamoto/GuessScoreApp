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
    
    //点数
    var score:Int = 0
    
    //ボタンのタップ回数を数える変数
    var count:Int = 0
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //画像を表示させる
        topImage = UIImage(named:"100ten")
        imageView.image = topImage
        
        //点数をランダムに生成する
        score = Int(arc4random_uniform(100))
    }

    //ボタンが押されたときの処理
    @IBAction func tapCheck(_ sender: Any) {
        
        //countをカウントアップする
        count += 1
        
        if let num = Int(textField.text!) {
            
            if num > score {
                label.text = "もっと低かった・・・"
            }
            
            if num < score {
                label.text = "もっと高かった♪♪♪"
            }
            
            if num == score {
                label.text = "正解!!!\(count)回目で当たった！"
                
                //再度スコアを設定
                score = Int(arc4random_uniform(100))
            }

        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

