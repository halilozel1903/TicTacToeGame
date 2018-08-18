//
//  ViewController.swift
//  TicTacToe
//
//  Created by Halil Özel on 18.08.2018.
//  Copyright © 2018 Halil Özel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func buttonSelected(_ sender: Any) {
        
        let selectedButton = sender as! UIButton
       // print(selectedButton.tag)
        playGame(butSelect: selectedButton)
        
    }
    
    var activePlayer = 1
    var player1 = [Int]()
    var player2 = [Int]()
    
    func playGame(butSelect:UIButton){
        
        if activePlayer == 1{
            butSelect.setTitle("X", for: UIControlState.normal)
            butSelect.backgroundColor = UIColor.green
            player1.append(butSelect.tag)
            print(player1)
            activePlayer = 2
        }else{
            butSelect.setTitle("O", for: UIControlState.normal)
            butSelect.backgroundColor = UIColor.blue
            player2.append(butSelect.tag)
            print(player2)
            activePlayer = 1
        }
        butSelect.isEnabled = false
        
    }
    

}

