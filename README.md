# Tic Tac Toe

<p align="center">
  <img src="TicTacToe/screen-1.png" width="220" alt="Empty tic-tac-toe board at the start of a match" />
</p>

<p align="center">
  <img alt="Platform" src="https://img.shields.io/badge/platform-iOS-000000?logo=apple&logoColor=white" />
  <img alt="Swift" src="https://img.shields.io/badge/Swift-4.0-F05138?logo=swift&logoColor=white" />
  <img alt="UIKit" src="https://img.shields.io/badge/UI-UIKit-2396F3" />
  <img alt="iOS" src="https://img.shields.io/badge/iOS-11.4%2B-lightgrey" />
  <img alt="License" src="https://img.shields.io/badge/license-MIT-blue" />
</p>

<p align="center">
  <img alt="ios" src="https://img.shields.io/badge/topic-ios-111111" />
  <img alt="swift" src="https://img.shields.io/badge/topic-swift-F05138" />
  <img alt="ios-game" src="https://img.shields.io/badge/topic-ios--game-6E40C9" />
  <img alt="tic-tac-toe" src="https://img.shields.io/badge/topic-tic--tac--toe-2EA44F" />
  <img alt="uikit" src="https://img.shields.io/badge/topic-uikit-2396F3" />
</p>

iOS UIKit tic-tac-toe match: you play X against a blocking computer opponent on a 3×3 board.

**About:** `iOS Tic Tac Toe in Swift and UIKit. Play X against a blocking CPU with draws, a scoreboard, and restart.`

Suggested GitHub topics: `ios`, `swift`, `uikit`, `ios-game`, `tic-tac-toe`, `mobile-game`

## Highlights

- Player is X, computer is O
- Wins on rows, columns, and both diagonals
- Draw when the board is full
- Computer finishes its own line, then blocks, then prefers center and corners
- Scoreboard for wins, draws, and losses
- **Restart** / **Play again** clears the board and keeps the score

## How to play

Tap an empty cell to place X. The computer answers immediately. Three marks in a line wins. A full board with no line is a draw. After the alert, start a new round without wiping the match score.

## Architecture

```text
ViewController  →  TicTacToeEngine
     board UI         outcomes + computer move
```

| File | Role |
| --- | --- |
| `ViewController.swift` | Board buttons, alerts, scoreboard, restart |
| `TicTacToeEngine.swift` | Winning lines, draws, empty cells, blocking AI |

Open `TicTacToe.xcodeproj` in Xcode and run the **TicTacToe** scheme.

## Screenshots

<p>
  <img src="TicTacToe/screen-1.png" width="220" alt="Empty board ready for the first move" />
  <img src="TicTacToe/screen-2.png" width="220" alt="Mid-game board with X and O marks" />
  <img src="TicTacToe/screen-3.png" width="220" alt="Completed match on the 3x3 grid" />
</p>

## License

MIT © Halil OZEL. See the license text below.

<details>
<summary>MIT License</summary>

```
MIT License

Copyright (c) 2022 Halil OZEL

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

</details>
