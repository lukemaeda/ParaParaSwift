//
//  ViewController.swift
//  ParaParaSwift
//
//  Created by MAEDAHAJIME on 2015/07/13.
//  Copyright (c) 2015年 MAEDA HAJIME. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ivTarget: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    // ステッパー値変更時
    @IBAction func changeStepper(sender: UIStepper) {
        
        // double →　int キャスト
        // 画像の表示
        var idx:Int  = Int(sender.value)
        
        println("\(idx)")
        
        // %02d 2桁00バディング
        var str:NSString = NSString(format:"image%02d.png",idx)

        // 画像の張り付け
        self.ivTarget.image = UIImage(named:str as String)
    }
}

