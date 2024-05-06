import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Image.asset(
          'assets/images/quiz-logo.png',

          // scale: 2.5,
          width: 300,
          color: const Color.fromARGB(125, 255, 255, 255),
        ),
        const SizedBox(
          height: 80,
        ),
        const Text(
          'Learn Flutter the fun way!',
          style: TextStyle(
              fontSize: 24, color: Color.fromARGB(255, 237, 223, 252)),
        ),
        const SizedBox(
          height: 30,
        ),
        OutlinedButton.icon(
          onPressed: startQuiz,
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
          ),
          label: const Text(
            'Start quiz ?',
          ),
          icon: const Icon(Icons.arrow_right_alt),
        ),
        const SizedBox(
          height: 25,
        ),
      ]),
    );
  }
}
