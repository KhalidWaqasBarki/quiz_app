import 'package:flutter/material.dart';
import 'package:quiz_app/models/live_quiz_model.dart';
import 'package:quiz_app/models/recent_quiz_model.dart';
import 'package:quiz_app/widgets/live_quiz.dart';
import 'package:quiz_app/widgets/quiz_header.dart';
import 'package:quiz_app/widgets/recent_quiz.dart';

import '../widgets/buttom_navigation_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueGrey[200],
        body: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            const QuizHeader(),
            Text(
              " Recent Quiz's",
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black87,
                  ),
            ),
            ...List.generate(recentQuizzes.length, (index) {
              return RecentQuiz(recentQuizModel: recentQuizzes[index]);
            }),
            Text(
              '  Live Quiz',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black87,
              ),
            ),
            ...List.generate(liveQuizzes.length, (index) {
              return LiveQuiz(liveQuizModel: liveQuizzes[index]);
            }),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.grey[200],
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items:   bottomNavigationList,
        ),
      ),
    );
  }
}


