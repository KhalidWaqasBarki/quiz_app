import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuizHeader extends StatelessWidget {
  const QuizHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230.h,
      child: Stack(
        children: [
          Container(
            height: 170.h,
            width: double.infinity,
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'assets/quiz_bg.png',
                    ),
                    fit: BoxFit.fill)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Text(
                      ' Lets Play',
                      style:
                          Theme.of(context).textTheme.headlineMedium!.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                    ),
                    Text(
                      ' And be the first!',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            color: Colors.white,
                          ),
                    ),
                  ],
                ),
                CircleAvatar(
                  radius: 25.h,
                  backgroundColor: Colors.white60,
                  child: Text(
                    'KW',
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).primaryColor,
                        ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 100.h,
            left: 0,
            right: 0,
            bottom: -8.h,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
              child: SizedBox(
                height: 120.h,
                child: Card(
                  color: Colors.grey[300],
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.blue.shade200,
                          Colors.yellow.shade100,
                          Colors.cyan.shade200,
                        ],
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Enter your quiz code',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black87,
                                ),
                          ),
                          const Text(
                            'To play with your friends',
                          ),
                          Row(
                            children: [
                              SizedBox(
                                height: 45.h,
                                width: 230.w,
                                child: TextField(
                                  cursorColor: Colors.blueGrey,
                                  decoration: InputDecoration(
                                      hintText: 'Enter Code..',
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15))),
                                ),
                              ),
                              SizedBox(width: 5.w),
                              ElevatedButton(
                                style: ButtonStyle(
                                  minimumSize: WidgetStatePropertyAll<Size>(
                                      Size(65.w, 40.h)),
                                  shape: WidgetStatePropertyAll<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )),
                                  backgroundColor: WidgetStatePropertyAll(
                                      Theme.of(context)
                                          .primaryColor
                                          .withOpacity(1)),
                                ),
                                onPressed: () {},
                                child: const Text(
                                  'Enter',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
