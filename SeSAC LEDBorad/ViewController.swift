//
//  ViewController.swift
//  SeSAC LEDBorad
//
//  Created by 이승현 on 2023/07/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var send: UIButton!
    @IBOutlet var colorChange: UIButton!
    @IBOutlet var textField: UITextField!
    @IBOutlet var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultLabel.textColor = .red
        resultLabel.font = UIFont.systemFont(ofSize: 60)
        
        send.layer.cornerRadius = 10
        send.layer.borderColor = UIColor.black.cgColor
        send.layer.borderWidth = 3
        
        colorChange.layer.cornerRadius = 10
        colorChange.layer.borderColor = UIColor.black.cgColor
        colorChange.layer.borderWidth = 3

        
    }
    
    
    @IBAction func sendButton(_ sender: UIButton) {
        resultLabel.text = textField.text
    }
    
    @IBAction func textFieldClicked(_ sender: UITextField) {
        
        resultLabel.text = sender.text
    }
    
    
    @IBAction func textFieldColorChanged(_ sender: UIButton) {
        // 랜덤한 RGB 값으로 색상 생성
                let randomRed = CGFloat.random(in: 0...1)
                let randomGreen = CGFloat.random(in: 0...1)
                let randomBlue = CGFloat.random(in: 0...1)
                
                // 랜덤한 색상으로 레이블의 글자색 변경
                resultLabel.textColor = UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
            }
    }
    



