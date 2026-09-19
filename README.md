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

iOS UIKit tic-tac-toe match: you play X against a blocking computer opponent on a 3×3 board.

**About:** `iOS Tic Tac Toe in Swift and UIKit. Play X against a blocking CPU with draws, a scoreboard, and restart.`

## Topics

15 GitHub topics (same count as the current sidebar), mixing high-traffic tags with game-specific ones. Drops the weak `game-develop` tag and `tic-tac-toe-multiplayer` (this build is player vs computer).

<p align="center">
  <a href="https://github.com/topics/ios"><img alt="ios" src="https://img.shields.io/badge/ios-111111?logo=apple&logoColor=white" /></a>
  <a href="https://github.com/topics/swift"><img alt="swift" src="https://img.shields.io/badge/swift-F05138?logo=swift&logoColor=white" /></a>
  <a href="https://github.com/topics/uikit"><img alt="uikit" src="https://img.shields.io/badge/uikit-2396F3" /></a>
  <a href="https://github.com/topics/xcode"><img alt="xcode" src="https://img.shields.io/badge/xcode-147EFB?logo=xcode&logoColor=white" /></a>
  <a href="https://github.com/topics/ios-app"><img alt="ios-app" src="https://img.shields.io/badge/ios--app-000000" /></a>
  <a href="https://github.com/topics/ios-game"><img alt="ios-game" src="https://img.shields.io/badge/ios--game-6E40C9" /></a>
  <a href="https://github.com/topics/ios-development"><img alt="ios-development" src="https://img.shields.io/badge/ios--development-333333" /></a>
  <a href="https://github.com/topics/swift-game"><img alt="swift-game" src="https://img.shields.io/badge/swift--game-C9341C" /></a>
  <a href="https://github.com/topics/game"><img alt="game" src="https://img.shields.io/badge/game-2EA44F" /></a>
  <a href="https://github.com/topics/game-development"><img alt="game-development" src="https://img.shields.io/badge/game--development-2EA44F" /></a>
  <a href="https://github.com/topics/mobile-app"><img alt="mobile-app" src="https://img.shields.io/badge/mobile--app-0A66C2" /></a>
  <a href="https://github.com/topics/mobile-game"><img alt="mobile-game" src="https://img.shields.io/badge/mobile--game-0A66C2" /></a>
  <a href="https://github.com/topics/tic-tac-toe"><img alt="tic-tac-toe" src="https://img.shields.io/badge/tic--tac--toe-16A34A" /></a>
  <a href="https://github.com/topics/tictactoe"><img alt="tictactoe" src="https://img.shields.io/badge/tictactoe-15803D" /></a>
  <a href="https://github.com/topics/tic-tac-toe-game"><img alt="tic-tac-toe-game" src="https://img.shields.io/badge/tic--tac--toe--game-166534" /></a>
</p>

`ios` · `swift` · `uikit` · `xcode` · `ios-app` · `ios-game` · `ios-development` · `swift-game` · `game` · `game-development` · `mobile-app` · `mobile-game` · `tic-tac-toe` · `tictactoe` · `tic-tac-toe-game`

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
