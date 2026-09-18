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

    var activePlayer = 1
    var player1 = [Int]()
    var player2 = [Int]()
    var gameOver = false
    var playerWins = 0
    var computerWins = 0
    var draws = 0

    private let scoreLabel = UILabel()
    private let restartButton = UIButton(type: .system)

    override func viewDidLoad() {
        super.viewDidLoad()
        setupScoreboard()
        refreshScoreLabel()
    }

    @IBAction func buttonSelected(_ sender: Any) {
        let selectedButton = sender as! UIButton
        playGame(butSelect: selectedButton)
    }

    func playGame(butSelect: UIButton) {
        if gameOver || !butSelect.isEnabled {
            return
        }

        if activePlayer == 1 {
            butSelect.setTitle("X", for: UIControlState.normal)
            butSelect.backgroundColor = UIColor.green
            player1.append(butSelect.tag)
            butSelect.isEnabled = false
            activePlayer = 2

            if finishIfNeeded() {
                return
            }

            autoPlay()
        } else {
            butSelect.setTitle("O", for: UIControlState.normal)
            butSelect.backgroundColor = UIColor.blue
            player2.append(butSelect.tag)
            butSelect.isEnabled = false
            activePlayer = 1
            finishIfNeeded()
        }
    }

    @discardableResult
    func finishIfNeeded() -> Bool {
        switch TicTacToeEngine.outcome(playerX: player1, playerO: player2) {
        case .win(.x):
            playerWins += 1
            endGame(title: "Winner", message: "Player 1 is winner")
            return true
        case .win(.o):
            computerWins += 1
            endGame(title: "Winner", message: "Player 2 is winner")
            return true
        case .draw:
            draws += 1
            endGame(title: "Draw", message: "The board is full. It's a draw.")
            return true
        case .ongoing:
            return false
        }
    }

    func endGame(title: String, message: String) {
        gameOver = true
        setBoardEnabled(false)
        refreshScoreLabel()

        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Play again", style: UIAlertActionStyle.default, handler: { _ in
            self.resetBoard()
        }))
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.cancel, handler: nil))
        present(alert, animated: true, completion: nil)
    }

    func autoPlay() {
        guard let cellID = TicTacToeEngine.computerMove(playerX: player1, playerO: player2) else {
            finishIfNeeded()
            return
        }

        if let button = button(for: cellID) {
            playGame(butSelect: button)
        }
    }

    @objc func resetBoard() {
        player1.removeAll()
        player2.removeAll()
        activePlayer = 1
        gameOver = false

        for button in boardButtons() {
            button.setTitle("", for: UIControlState.normal)
            button.backgroundColor = UIColor.white
            button.isEnabled = true
        }
    }

    private func setBoardEnabled(_ enabled: Bool) {
        for button in boardButtons() {
            if player1.contains(button.tag) || player2.contains(button.tag) {
                button.isEnabled = false
            } else {
                button.isEnabled = enabled
            }
        }
    }

    private func boardButtons() -> [UIButton] {
        return [but1, but2, but3, but4, but5, but6, but7, but8, but9]
    }

    private func button(for cellID: Int) -> UIButton? {
        switch cellID {
        case 1:
            return but1
        case 2:
            return but2
        case 3:
            return but3
        case 4:
            return but4
        case 5:
            return but5
        case 6:
            return but6
        case 7:
            return but7
        case 8:
            return but8
        case 9:
            return but9
        default:
            return nil
        }
    }

    private func setupScoreboard() {
        scoreLabel.translatesAutoresizingMaskIntoConstraints = false
        scoreLabel.textAlignment = .center
        scoreLabel.numberOfLines = 2
        scoreLabel.font = UIFont.boldSystemFont(ofSize: 16)

        restartButton.translatesAutoresizingMaskIntoConstraints = false
        restartButton.setTitle("Restart", for: .normal)
        restartButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        restartButton.addTarget(self, action: #selector(resetBoard), for: .touchUpInside)

        view.addSubview(scoreLabel)
        view.addSubview(restartButton)

        NSLayoutConstraint.activate([
            scoreLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 12),
            scoreLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            scoreLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),

            restartButton.topAnchor.constraint(equalTo: scoreLabel.bottomAnchor, constant: 4),
            restartButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            restartButton.bottomAnchor.constraint(lessThanOrEqualTo: but1.topAnchor, constant: -8)
        ])
    }

    private func refreshScoreLabel() {
        scoreLabel.text = "You \(playerWins)  •  Draw \(draws)  •  CPU \(computerWins)"
    }
}
