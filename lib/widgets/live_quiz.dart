import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ionicons/ionicons.dart';
import 'package:quiz_app/models/live_quiz_model.dart';
import 'package:quiz_app/models/recent_quiz_model.dart';

class LiveQuiz extends StatelessWidget {
  const LiveQuiz({super.key, required this.liveQuizModel});

  final LiveQuizModel liveQuizModel;

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
                Colors.yellow.shade100,
                Colors.cyan.shade200,
              ],
            ),
          ),
          child: ListTile(

            contentPadding: EdgeInsets.all(10),
            leading: Container(
              width: 55.w,
              decoration: BoxDecoration(
                color: Colors.black45,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Icon(
                  liveQuizModel.icon,
                  color: Colors.white,
                ),
              ),
            ),
            title: Text(
              liveQuizModel.name,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            subtitle: Row(
              children: [
                const Icon(
                  Ionicons.document_text_outline,
                  size: 15,
                ),
                Text('${liveQuizModel.activePlayers} active players'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
