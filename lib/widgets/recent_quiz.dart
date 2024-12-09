import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ionicons/ionicons.dart';
import 'package:quiz_app/models/question_model.dart';
import 'package:quiz_app/models/recent_quiz_model.dart';
import 'package:quiz_app/screens/question_scree.dart';

class RecentQuiz extends StatelessWidget {
  const RecentQuiz({super.key, required this.recentQuizModel});

  final RecentQuizModel recentQuizModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        color: Colors.grey[300],
        elevation: 5,
        shadowColor: Colors.grey,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.blue.shade200,
                Colors.yellow.shade50,
                Colors.cyan.shade200,
              ],
            ),
          ),
          child: ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => QuestionScreen(
                            title: recentQuizModel.name,

                          )));
            },
            contentPadding: const EdgeInsets.all(10),
            leading: Container(
              width: 55.w,
              decoration: BoxDecoration(
                color: Colors.black45,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Icon(
                  recentQuizModel.icon,
                  color: Colors.white,
                ),
              ),
            ),
            title: Text(
              recentQuizModel.name,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            subtitle: Row(
              children: [
                Icon(
                  Ionicons.document_text_outline,
                  size: 15,
                ),
                Text(
                    '${recentQuizModel.answeredQuestions}/${recentQuizModel.totalQuestions} Questions'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
