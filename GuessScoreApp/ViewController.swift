//
//  ViewController.swift
//  GuessScoreApp
//
//  Created by s247 on 2018/01/04.
//  Copyright © 2018年 ami. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //UIImageViewを紐付ける
    @IBOutlet weak var imageView: UIImageView!

    //画像のインスタンスを作成
    var topImage:UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        topImage = UIImage(named:"100ten")
        imageView.image = topImage
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

