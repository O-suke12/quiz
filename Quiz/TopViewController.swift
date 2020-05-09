//
//  TopViewController.swift
//  Quiz
//
//  Created by litech on 2019/06/04.
//  Copyright © 2019 LifeisTech. All rights reserved.
//

import UIKit

class TopViewController: UIViewController {
    @IBOutlet var text: UITextView?
    override func viewDidLoad() {
        // 枠のカラー
        text?.layer.borderColor = UIColor.white.cgColor
               
               // 枠の幅
        text?.layer.borderWidth = 5.0
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func back(segue: UIStoryboardSegue) {
        
    }

}
