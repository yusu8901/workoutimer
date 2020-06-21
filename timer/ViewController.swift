//
//  ViewController.swift
//  timer
//
//  Created by yusuke shinmura on 2020/06/20.
//  Copyright © 2020 yusuke. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    
    var count: Float = 0.0
    
    var timer: Timer = Timer()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func startAndStop() {
            
            if !timer.isValid {
                //タイマーが動作していなかったら動かす
                timer = Timer.scheduledTimer(timeInterval: 0.01,
                                             target: self,
                                             selector: #selector(self.up),
                                             userInfo: nil,
                                             repeats: true)
                
                
                
            } else if timer.isValid {
                //もしタイマーが動いていたら停止する
                timer.invalidate()
        }
            
        
        }
        
        
        
        @IBAction func reset() {
            
            if timer.isValid {
                timer.invalidate()
            } else if !timer.isValid {
                count = 0.00
                label.text = String(format:"%.2f", count)
            }
            
        }
        
       @objc func up() {
              //countを0.01足す
              count = count - 0.01
              //ラベルに小数点以下２桁まで表示
              label.text = String(format: "%.2f", count)
          }


    }
