//
//  ViewController.swift
//  TicTacToe
//
//  Created by Halil Özel on 18.08.2018.
//  Copyright © 2018 Halil Özel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var but1: UIButton!
    @IBOutlet weak var but2: UIButton!
    @IBOutlet weak var but3: UIButton!
    @IBOutlet weak var but4: UIButton!
    @IBOutlet weak var but5: UIButton!
    @IBOutlet weak var but6: UIButton!
    @IBOutlet weak var but7: UIButton!
    @IBOutlet weak var but8: UIButton!
    @IBOutlet weak var but9: UIButton!
    
    
    
    var activePlayer = 1 // aktif kullanıcı tanımlandı.
    var player1 = [Int]() // 1.kullanıcının oynadığı alanlar çizildi.
    var player2 = [Int]() // 2.kullanıcının oynadığı alanlar çizildi.
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func buttonSelected(_ sender: Any) {
        
        let selectedButton = sender as! UIButton
       // print(selectedButton.tag)
        playGame(butSelect: selectedButton)
        
    }
    

    func playGame(butSelect:UIButton){
        
        if activePlayer == 1{ // birinci oyuncu ile ilgili işlemler tanımlandı.
            butSelect.setTitle("X", for: UIControlState.normal)
            butSelect.backgroundColor = UIColor.green
            player1.append(butSelect.tag)
           // print(player1)
            activePlayer = 2
            autoPlay()
        }else{ // ikinci oyuncunun oynadıktan sonra neler olacak onlar belirtiliyor.
            butSelect.setTitle("O", for: UIControlState.normal)
            butSelect.backgroundColor = UIColor.blue
            player2.append(butSelect.tag)
           // print(player2)
            activePlayer = 1
        }
        butSelect.isEnabled = false // tıklanan bir butona bir daha tıklanmaması için bu değeri false yaptık.
        
        findWinner() // kazananı bulma metodunu çağırdık.
    }
    
    // kazanan oyuncuyu bulma işlemleri gerçekleşiyor.
    func findWinner(){
        var winner = -1
        
        // row 1
        
        if(player1.contains(1) && player1.contains(2) && player1.contains(3)){
            winner = 1
        }
        
        if(player2.contains(1) && player2.contains(2) && player2.contains(3)){
            winner = 2
        }
        
        
        // row 2
        
        if(player1.contains(4) && player1.contains(5) && player1.contains(6)){
            winner = 1
        }
        
        if(player2.contains(4) && player2.contains(5) && player2.contains(6)){
            winner = 2
        }
        
        
        // row 3
        
        if(player1.contains(7) && player1.contains(8) && player1.contains(9)){
            winner = 1
        }
        
        if(player2.contains(7) && player2.contains(8) && player2.contains(9)){
            winner = 2
        }
        
        
        // col 1
        
        if(player1.contains(1) && player1.contains(4) && player1.contains(7)){
            winner = 1
        }
        
        if(player2.contains(1) && player2.contains(4) && player2.contains(7)){
            winner = 2
        }
        
        // col 2
        
        if(player1.contains(2) && player1.contains(5) && player1.contains(8)){
            winner = 1
        }
        
        if(player2.contains(2) && player2.contains(5) && player2.contains(8)){
            winner = 2
        }
        
        // col 3
        
        if(player1.contains(3) && player1.contains(6) && player1.contains(9)){
            winner = 1
        }
        
        if(player2.contains(3) && player2.contains(6) && player2.contains(9)){
            winner = 2
        }
        
        if winner != -1{ // winner değeri -1 değilse
            
            var msg = ""
            
            // kazanan 1. oyuncu ise
            if winner == 1{
                msg = "Player 1 is winner" // mesaj
            }else{ // kazanan 2. oyunuc ise
                msg = "Player 2 is winner" // mesaj
            }
            
            // print(msg)
            
            // alert gösterimi
            let alert = UIAlertController(title: "Winner", message: msg, preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
        }
        
        
    }
    
    
    func autoPlay(){
    
    var emptyCells = [Int]()
    
    for index in 1...9{
    
        if !(player1.contains(index)||player2.contains(index)){
            emptyCells.append(index)
        }
    
    }
        
        let randIndex = arc4random_uniform(UInt32(emptyCells.count))
        let cellID = emptyCells[Int(randIndex)]
        var buSelect : UIButton?
        
        switch cellID {
        case 1:
            buSelect = but1
        case 2:
            buSelect = but2
        case 3:
            buSelect = but3
        case 4:
            buSelect = but4
        case 5:
            buSelect = but5
        case 6:
            buSelect = but6
        case 7:
            buSelect = but7
        case 8:
            buSelect = but8
        case 9:
            buSelect = but9
        default:
            buSelect = but1
        }
        
        playGame(butSelect: buSelect!)
    
    }
    
    
    
    
    
    

}

