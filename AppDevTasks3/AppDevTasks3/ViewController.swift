//
//  ViewController.swift
//  AppDevTasks3
//
//  Created by 山本 夏紀 on 2021/01/06.
//

import UIKit

class ViewController: UIViewController {
    
    //アウトレット
        //左のテキストフィールド
        @IBOutlet private weak var leftTextField: UITextField!
    
        //右の左のテキストフィールド
        @IBOutlet private weak var rightTextField: UITextField!
        //左のスイッチボタン
        @IBOutlet private weak var leftSwitchButton: UISwitch!
    
        //右のスイッチボタン
        @IBOutlet private weak var rightSwichButton: UISwitch!

        //左のラベル
        @IBOutlet private weak var leftLabel: UILabel!
        
        //右のラベル
        @IBOutlet private weak var rightLabel: UILabel!
    
        //合計のラベル
        @IBOutlet private weak var resultLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        leftSwitchButton.isOn = false
        rightSwichButton.isOn = false
    }
    
    //計算するボタンを押したとき
    @IBAction func calculateButton(_ sender: UIButton) {
        //なんで定数なんだろう？左側-----------------------
        let num1 = Int(leftTextField.text ?? "") ?? 0
        let indicateLeftLavel: Int
        
        //左のスイッチがON or OFF の処理
        if leftSwitchButton.isOn {
            indicateLeftLavel = -num1
        } else {
            indicateLeftLavel = num1
        }
        
        //左のラベルに数字を表示する
        leftLabel.text = String(indicateLeftLavel)
        

        // --右側------------------------------------------------------
        let num2 = Int(rightTextField.text ?? "") ?? 0
        let indicateRightLavel: Int

        //左のスイッチがON or OFF の処理
        if rightSwichButton.isOn {
            indicateRightLavel = -num2
        } else {
            indicateRightLavel = num2
        }

        //右のラベルに数字を表示する
        rightLabel.text = String(indicateRightLavel)


        // --結果出力----------------------------------------------------
        print(indicateLeftLavel)
        print(indicateRightLavel)
        print(indicateLeftLavel + indicateRightLavel)
        // --以下がエラーになる----------------------------------------------------
        resultLabel.text = String(indicateLeftLavel + indicateRightLavel)
    }
}

