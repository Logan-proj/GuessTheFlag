# GuessTheFlag

"GuessTheFlag" is a SwiftUI-based game that challenges players to identify flags from various countries. 

![GuessTheFlag Screenshot](https://user-images.githubusercontent.com/79545798/281597943-a25d1d17-40a8-4834-9f60-7659490910f0.png)

## Credits and Acknowledgements

"GuessTheFlag" was developed as a code-along project following the tutorials provided by [Hacking with Swift](https://www.hackingwithswift.com/100/swiftui). It's a part of their "100 Days of SwiftUI" challenge, which offers comprehensive, hands-on lessons on SwiftUI.

This project provided an excellent opportunity to explore the intricacies of SwiftUI, guided by the resources and tutorials provided by Hacking with Swift. The step-by-step approach ensured that every concept and its implementation were thoroughly understood.

Thanks again to [Hacking with Swift](https://www.hackingwithswift.com) for providing this educational content for beginners.

## Features

- **Random Flag Selection**: Randomly shuffles the flags to present a new challenge every time.
- **Score Tracking**: Keeps track of the user's score throughout the session.
- **Game Over Logic**: Ends the game after a certain number of rounds and presents the final score.
- **Restart Game**: Allows players to restart the game after it ends.
- **Dynamic Alerts**: Shows alerts to give feedback on the user's selection—correct or incorrect.

## What I Learned

The development of "GuessTheFlag" has been an educational experience where I have:

- **Deepened my SwiftUI knowledge**: Gained a better understanding of the SwiftUI framework and its components.
- **State Management**: Learned to manage app state using `@State` properties and how they interact with the app's view.
- **UI Flow and Alerts**: Implemented alerts and modals to provide feedback and guide the user through the game's flow.
- **Game Logic**: Developed the logic to handle the selection of flags, randomize choices, and determine game over conditions.
- **User Interface**: Designed a user interface that's both aesthetic and functional, utilizing gradients, shadows, and other SwiftUI views.

## Getting Started

### Prerequisites

- macOS running the latest stable version of Xcode.
- Basic understanding of SwiftUI.

### Installation

1. Clone the repository:
```sh
git clone https://github.com/Logan-proj/GuessTheFlag.git
```
2. Open `GuessTheFlag.xcodeproj` in Xcode.
3. Build and run the application on your preferred simulator or physical device.

## Usage

Upon launching the app:

1. You'll be presented with three flags.
2. Tap the flag that matches the country name displayed.
3. An alert will confirm whether you guessed correctly and will update your score.
4. After eight rounds, the game will show your final score and give you the option to restart.

Feel free to fork this project, explore the code, and suggest any improvements or changes!
