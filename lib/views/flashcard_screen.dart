import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:flashcards_quiz/views/quiz_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class NewCard extends StatefulWidget {
  final String topicName;
  final List<dynamic> typeOfTopic;
  const NewCard(
      {super.key, required this.topicName, required this.typeOfTopic});

  @override
  State<NewCard> createState() => _NewCardState();
}

class _NewCardState extends State<NewCard> {
  final AppinioSwiperController controller = AppinioSwiperController();

  @override
  Widget build(BuildContext context) {
    const Color bgColor3 = Color(0xFF5170FD);
    const Color cardColor = Color(0xFF4993FA);

    // Get a list of 4 randomly selected Questions objects
    Map<dynamic, dynamic> randomQuestionsMap =
        getRandomQuestionsAndOptions(widget.typeOfTopic, 4);

    List<dynamic> randomQuestions = randomQuestionsMap.keys.toList();
    dynamic randomOptions = randomQuestionsMap.values.toList();

    return Scaffold(
      backgroundColor: bgColor3,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 200, // Adjust the height of the image as needed
                child: Image.asset(
                  "assets/good.png",
                  fit: BoxFit.contain,
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(cardColor),
                  fixedSize: MaterialStateProperty.all(
                    Size(MediaQuery.of(context).size.width * 0.85, 30),
                  ),
                  elevation: MaterialStateProperty.all(4),
                ),
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => QuizScreen(
                        questionlenght: randomQuestions,
                        optionsList: randomOptions,
                        topicType: widget.topicName,
                      ),
                    ),
                  );
                },
                child: const Text(
                  "Start Quiz",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Map<dynamic, dynamic> getRandomQuestionsAndOptions(
  List<dynamic> allQuestions,
  int count,
) {
  final randomQuestions = <dynamic>[];
  final randomOptions = <dynamic>[];
  final random = Random();

  if (count >= allQuestions.length) {
    count = allQuestions.length;
  }

  while (randomQuestions.length < count) {
    final randomIndex = random.nextInt(allQuestions.length);
    final selectedQuestion = allQuestions[randomIndex];

    if (!randomQuestions.contains(selectedQuestion)) {
      randomQuestions.add(selectedQuestion);
      randomOptions.add(selectedQuestion.options);
    }
  }

  return Map.fromIterables(randomQuestions, randomOptions);
}
