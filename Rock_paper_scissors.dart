import 'dart:io';
import 'dart:math';

enum Move { Rock, paper, scissors }

void main(List<String> args) {
  final rng = Random();
  while (true) {
    stdout.write('Rock,paper or scissors ? ');

    final input = stdin.readLineSync();
    print(input);
    if (input == 'R' || input == 'p' || input == 's') {
      var playerMove;
      if (input == 'R') {
        playerMove = Move.Rock;
      } else if (input == 'p') {
        playerMove = Move.paper;
      } else if (input == 's') {
        playerMove = Move.scissors;
      }
      final random = rng.nextInt(3);
      final aiMove = Move.values[random];
      print('You played $playerMove');
      print('AI played $aiMove');

      if (playerMove == aiMove) {
        print('its a draw');
      } else if (playerMove == Move.Rock && aiMove == Move.paper ||
          playerMove == Move.scissors && aiMove == Move.paper ||
          playerMove == Move.paper && aiMove == Move.Rock) {
        print('You win');
      } else {
        print('You loose');
      }
    } else if (input == 'c') {
      break;
    } else {
      print('Wrong entry');
    }
  }
}
