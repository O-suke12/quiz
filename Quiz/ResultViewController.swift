//
//  ResultViewController.swift
//  Quiz
//
//  Created by litech on 2015/02/10.
//  Copyright (c) 2015年 LifeisTech. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    var correctAnswer:Int = 0
    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var button: UIButton!
    
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.button.layer.shadowOpacity = 0.5
          self.button.layer.shadowRadius = 12
          self.button.layer.shadowColor = UIColor.black.cgColor
          self.button.layer.shadowOffset = CGSize(width: 5, height: 5)
        self.button.layer.borderWidth = 1
        self.button.layer.borderColor = UIColor.white.cgColor

        // Do any additional setup after loading the view.
        resultLabel.text = "\(correctAnswer)"

    }
    
}
