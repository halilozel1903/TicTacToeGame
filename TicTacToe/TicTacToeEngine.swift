//
//  TicTacToeEngine.swift
//  TicTacToe
//
//  Created by Halil Özel on 18.08.2018.
//  Copyright © 2018 Halil Özel. All rights reserved.
//

import Foundation

enum Mark {
    case x
    case o
}

enum GameOutcome {
    case ongoing
    case win(Mark)
    case draw
}

enum TicTacToeEngine {
    static let winningLines: [[Int]] = [
        [1, 2, 3],
        [4, 5, 6],
        [7, 8, 9],
        [1, 4, 7],
        [2, 5, 8],
        [3, 6, 9],
        [1, 5, 9],
        [3, 5, 7]
    ]

    static func outcome(playerX: [Int], playerO: [Int]) -> GameOutcome {
        if hasWinningLine(playerX) {
            return .win(.x)
        }
        if hasWinningLine(playerO) {
            return .win(.o)
        }
        if occupiedCells(playerX: playerX, playerO: playerO).count == 9 {
            return .draw
        }
        return .ongoing
    }

    static func emptyCells(playerX: [Int], playerO: [Int]) -> [Int] {
        let taken = occupiedCells(playerX: playerX, playerO: playerO)
        var cells = [Int]()
        for index in 1...9 {
            if !taken.contains(index) {
                cells.append(index)
            }
        }
        return cells
    }

    static func computerMove(playerX: [Int], playerO: [Int]) -> Int? {
        let available = emptyCells(playerX: playerX, playerO: playerO)
        if available.isEmpty {
            return nil
        }

        if let winningMove = finishingMove(for: playerO, opponent: playerX, available: available) {
            return winningMove
        }
        if let blockingMove = finishingMove(for: playerX, opponent: playerO, available: available) {
            return blockingMove
        }
        if available.contains(5) {
            return 5
        }

        let corners = [1, 3, 7, 9].filter { available.contains($0) }
        if !corners.isEmpty {
            return randomCell(from: corners)
        }

        return randomCell(from: available)
    }

    private static func hasWinningLine(_ cells: [Int]) -> Bool {
        for line in winningLines {
            if cells.contains(line[0]) && cells.contains(line[1]) && cells.contains(line[2]) {
                return true
            }
        }
        return false
    }

    private static func finishingMove(for player: [Int], opponent: [Int], available: [Int]) -> Int? {
        for cell in available {
            var trial = player
            trial.append(cell)
            if hasWinningLine(trial) {
                return cell
            }
        }
        return nil
    }

    private static func occupiedCells(playerX: [Int], playerO: [Int]) -> [Int] {
        return playerX + playerO
    }

    private static func randomCell(from cells: [Int]) -> Int {
        let index = Int(arc4random_uniform(UInt32(cells.count)))
        return cells[index]
    }
}
