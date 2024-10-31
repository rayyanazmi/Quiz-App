import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  const AppLogo(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 320,
            color: const Color.fromARGB(145, 255, 255, 255),
          ),
          const SizedBox(height: 60),
          Text(
            'Here you can learn flutter the fun way!',
            style: TextStyle(
              color: const Color.fromARGB(255, 255, 255, 255),
              fontSize: 22,
            ),
          ),
          const SizedBox(height: 30, width: 80),
          OutlinedButton.icon(
            onPressed: () {
              startQuiz();
            },
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 255, 255, 255),
            ),
            icon: const Icon(Icons.touch_app_rounded),
            label: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
