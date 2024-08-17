import 'package:flashcards_quiz/models/layout_questions_model.dart';
import 'package:flashcards_quiz/models/naviagation_questions_model.dart';
import 'package:flashcards_quiz/models/widget_questions_model.dart';
import 'package:flashcards_quiz/models/state_questions_model.dart';
import 'package:flutter/cupertino.dart';

const Color cardColor = Color(0xFF4993FA);

class FlutterTopics {
  final int id;
  final String topicName;
  final String topicImage;
  final Color topicColor;
  final List<dynamic> topicQuestions;

  FlutterTopics({
    required this.id,
    required this.topicColor,
    required this.topicImage,
    required this.topicName,
    required this.topicQuestions,
  });
}

final List<FlutterTopics> flutterTopicsList = [
  FlutterTopics(
    id: 0,
    topicColor: cardColor,
    topicImage: 'assets/java.png',
    topicName: "Java",
    topicQuestions: widgetQuestionsList,
  ),
  FlutterTopics(
    id: 1,
    topicColor: cardColor,
    topicImage: 'assets/python.png',
    topicName: "Python",
    topicQuestions: stateQuestionsList,
  ),
  FlutterTopics(
    id: 2,
    topicColor: cardColor,
    topicImage: 'assets/html.png',
    topicName: "HTML",
    topicQuestions: navigateQuestionsList,
  ),
  FlutterTopics(
    id: 3,
    topicColor: cardColor,
    topicImage: 'assets/flutter.png',
    topicName: "Flutter",
    topicQuestions: layOutQuestionsList,
  ),
];
