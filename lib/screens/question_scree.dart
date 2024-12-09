import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ionicons/ionicons.dart';
import 'package:quiz_app/models/question_model.dart';

class QuestionScreen extends StatefulWidget {
  final String title;

  const QuestionScreen({super.key, required this.title});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  final _pageController = PageController();

  int currentQuestion = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(widget.title,style: Theme.of(context).textTheme.headlineSmall,),
        centerTitle: true,
        actions: [
          IconButton(icon: const Icon(Ionicons.help_outline), onPressed: () {}),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Question ${currentQuestion + 1}/${sampleQuestions.length}",
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              height: 10.h,
            ),
            Expanded(
              child: PageView.builder(
                  controller: _pageController,
                  onPageChanged: (index) {
                    currentQuestion = index;
                    setState(() {});
                  },
                  physics: const BouncingScrollPhysics(),
                  itemCount: sampleQuestions.length,
                  itemBuilder: (context, index) {
                    final question = sampleQuestions[index];
                    return ListView(
                      children: [
                        Text(
                          question.question,
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                        SizedBox(height: 25.h),
                        ...List.generate(4, (optionIndex) {
                          return Padding(
                            padding: EdgeInsets.only(bottom: 20.h, top: 10.h),
                            child: RadioListTile(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                                contentPadding: const EdgeInsets.all(8),
                                value: question.options[optionIndex],
                                tileColor: Colors.grey[100],
                                groupValue: question.userAnswer,
                                selectedTileColor: Colors.grey[300],
                                selected: question.options[optionIndex] ==
                                    question.userAnswer,
                                title: Text(question.options[optionIndex]),
                                onChanged: (value) {
                                  setState(() {
                                    question.userAnswer = value!;
                                  });
                                }),
                          );
                        }),
                        if (question.userAnswer.isNotEmpty)
                          Text(question.answer == question.userAnswer
                              ? 'Your answer is Correct'
                              : 'Wrong answer! Try again.'),
                      ],
                    );
                  }),
            ),
            SizedBox(
              width: double.maxFinite,
              height: 60.h,
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ElevatedButton(
                  onPressed: () {
                    if (currentQuestion < sampleQuestions.length - 1) {
                      currentQuestion++;
                      _pageController.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeOut);
                      setState(() {});
                    }
                  },
                  style: ButtonStyle(
                    shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
                    backgroundColor:
                        WidgetStatePropertyAll(Colors.deepPurple[400]),
                  ),
                  child: Text(
                    currentQuestion < sampleQuestions.length - 1
                        ? 'Next'
                        : 'Submit',
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            )
          ],
        ),
      ),
    );
  }
}
