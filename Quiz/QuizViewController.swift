//
//  QuizViewController.swift
//  Quiz
//
//  Created by litech on 2015/02/10.
//  Copyright (c) 2015年 LifeisTech. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {
    //クイズを格納する配列
    var quizArray = [[Any]]()
    
    //正解数
    var correctAnswer: Int = 0
    
    //クイズを表示するTextView
    @IBOutlet var quizTextView: UITextView!
    
    //選択肢のボタン
    @IBOutlet var choiceButtons1: UIButton!
    @IBOutlet var choiceButtons2: UIButton!
    @IBOutlet var choiceButtons3: UIButton!
    @IBOutlet var text: UITextView?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        text?.layer.borderColor = UIColor.white.cgColor
            
            // 枠の幅
        text?.layer.borderWidth = 5.0
            
            // 枠を角丸にする
      
        // 影の設定
        self.choiceButtons1.layer.shadowOpacity = 0.5
        self.choiceButtons1.layer.shadowRadius = 12
        self.choiceButtons1.layer.shadowColor = UIColor.black.cgColor
        self.choiceButtons1.layer.shadowOffset = CGSize(width: 5, height: 5)

        self.choiceButtons2.layer.shadowOpacity = 0.5
        self.choiceButtons2.layer.shadowRadius = 12
        self.choiceButtons2.layer.shadowColor = UIColor.black.cgColor
        self.choiceButtons2.layer.shadowOffset = CGSize(width: 5, height: 5)
        
        self.choiceButtons3.layer.shadowOpacity = 0.5
        self.choiceButtons3.layer.shadowRadius = 12
        self.choiceButtons3.layer.shadowColor = UIColor.black.cgColor
        self.choiceButtons3.layer.shadowOffset = CGSize(width: 5, height: 5)
        
        //------------------------ここから下にクイズを書く------------------------//
        quizArray.append(["Life is Tech!のロゴTシャツにない色は？", "赤", "オレンジ", "黄色", 2])
        quizArray.append(["サーモンは何身魚？", "赤身", "白身", "橙身", 2])
        //------------------------ここから上にクイズを書く------------------------//
        quizArray.shuffle()
        choiceQuiz()
    }
    
    func choiceQuiz() {
        quizTextView.text = quizArray[0][0] as? String
        
        //選択肢のボタンにそれぞれ選択肢のテキストをセット
        choiceButtons1.setTitle(quizArray[0][1] as? String, for: .normal)
        choiceButtons2.setTitle(quizArray[0][2] as? String, for: .normal)
        choiceButtons3.setTitle(quizArray[0][3] as? String, for: .normal)
    }
    
    @IBAction func choiceAnswer(sender: UIButton) {
        if quizArray[0][4] as! Int == sender.tag {
            //正解数を増やす
            correctAnswer+=1
        }
        
        quizArray.remove(at: 0)
        //解いた問題数の合計が予め設定していた問題数に達したら結果画面へ
        if quizArray.count == 0 {
            performSegueToResult()
        } else {
            choiceQuiz()
        }
    }
    
    func performSegueToResult() {
        performSegue(withIdentifier: "toResultView", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "toResultView") {
            
            let resultView = segue.destination as! ResultViewController
            resultView.correctAnswer = self.correctAnswer
        }
    }
    
}


