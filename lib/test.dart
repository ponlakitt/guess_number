// top-level function
// ignore_for_file: avoid_print
import 'dart:io';
import 'dart:math';

void main() {
  var i = 0;
  var r = Random();
  var answer = r.nextInt(100);
  bool correct = true;
  print("╔══════════════════════════════════════════════════");
  print("║                 GUESS THE NUMBER ☺ ");
  print("║──────────────────────────────────────────────────");

  while (correct == true) {
    stdout.write('║ Guess the number between 1 and 100:');
    var input = stdin.readLineSync();
    var guess = int.tryParse(input!);

    if (guess != null) {
      if (guess == answer) {
        correct = false;
      }
      else if (guess < answer) {
        print("║ ➜ " + guess.toString() +
            " is too low! ▼ try again.");
        print("║──────────────────────────────────────────────────");
      }
      else if (guess > answer) {
        print("║ ➜ " + guess.toString() +
            " is too high! ▲ try again.");
        print("║──────────────────────────────────────────────────");
      }
      i++;
    }
  }

  print("║ ➜ " + answer.toString() + " is Congrat! ❤,You guess " + i.toString() + " times.");
  print("║──────────────────────────────────────────────────");
  print("║                     THE END");
  print("╚═══════════════════════════════════════════════════");
}
// รับ input ทาง cmd แล้วแสดงผล