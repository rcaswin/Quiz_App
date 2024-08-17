class LayOutQuestion {
  final int id;
  final String text;
  final List<LayOutOption> options;
  bool isLocked;
  LayOutOption? selectedWiidgetOption;
  LayOutOption? correctAnswer;
  // final int timeSeconds;

  LayOutQuestion({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedWiidgetOption,
    required this.id,
    required this.correctAnswer,
    //  required this.timeSeconds
  });

  LayOutQuestion copyWith() {
    return LayOutQuestion(
      id: id,
      text: text,
      options: options
          .map(
            (option) =>
                LayOutOption(text: option.text, isCorrect: option.isCorrect),
          )
          .toList(),
      isLocked: isLocked,
      selectedWiidgetOption: selectedWiidgetOption,
      correctAnswer: correctAnswer,
    );
  }
}

class LayOutOption {
  final String text;
  final bool isCorrect;

  const LayOutOption({
    required this.text,
    required this.isCorrect,
  });
}

final layOutQuestionsList = [
  LayOutQuestion(
    id: 0,
    text:
        "Which widget is used to create a layout where children are placed vertically?",
    options: [
      const LayOutOption(text: "Row", isCorrect: false),
      const LayOutOption(text: "Column", isCorrect: true),
      const LayOutOption(text: "Flex", isCorrect: false),
      const LayOutOption(text: "Container", isCorrect: false),
    ],
    correctAnswer: const LayOutOption(text: "Column", isCorrect: true),
  ),
  LayOutQuestion(
    id: 1,
    text:
        "Which widget allows other widgets to expand and contract based on available space?",
    options: [
      const LayOutOption(text: "Flexible", isCorrect: true),
      const LayOutOption(text: "Expanded", isCorrect: false),
      const LayOutOption(text: "Container", isCorrect: false),
      const LayOutOption(text: "Stack", isCorrect: false),
    ],
    correctAnswer: const LayOutOption(text: "Flexible", isCorrect: true),
  ),

  LayOutQuestion(
    id: 2,
    text:
        "Which widget is used to create a box with specified width and height?",
    options: [
      const LayOutOption(text: "Container", isCorrect: true),
      const LayOutOption(text: "SizedBox", isCorrect: false),
      const LayOutOption(text: "Card", isCorrect: false),
      const LayOutOption(text: "Row", isCorrect: false),
    ],
    correctAnswer: const LayOutOption(text: "Container", isCorrect: true),
  ),

  LayOutQuestion(
    id: 3,
    text:
        "Which property is used to align children widgets to the start or end of a row?",
    options: [
      const LayOutOption(text: "MainAxisAlignment", isCorrect: true),
      const LayOutOption(text: "CrossAxisAlignment", isCorrect: false),
      const LayOutOption(text: "MainAxisSize", isCorrect: false),
      const LayOutOption(text: "Spacer", isCorrect: false),
    ],
    correctAnswer: const LayOutOption(text: "MainAxisAlignment", isCorrect: true),
  ),
  
  LayOutQuestion(
    id: 4,
    text:
        "Which widget is used to precisely position children using x, y coordinates?",
    options: [
      const LayOutOption(text: "Align", isCorrect: false),
      const LayOutOption(text: "FittedBox", isCorrect: false),
      const LayOutOption(text: "Positioned", isCorrect: true),
      const LayOutOption(text: "Stack", isCorrect: false),
    ],
    correctAnswer: const LayOutOption(text: "Positioned", isCorrect: true),
  ),
  
  LayOutQuestion(
    id: 5,
    text:
        "Which widget is used to create a layout where children are placed horizontally?",
    options: [
      const LayOutOption(text: "Row", isCorrect: true),
      const LayOutOption(text: "Divider", isCorrect: false),
      const LayOutOption(text: "Column", isCorrect: false),
      const LayOutOption(text: "Stack", isCorrect: false),
    ],
    correctAnswer: const LayOutOption(text: "Row", isCorrect: true),
  ),
  
  LayOutQuestion(
    id: 6,
    text:
        "Which property is used to align widgets to the top, bottom, or center inside a Column?",
    options: [
      const LayOutOption(text: "Row", isCorrect: false),
      const LayOutOption(text: "Align", isCorrect: true),
      const LayOutOption(text: "Spacer", isCorrect: false),
      const LayOutOption(text: "MainAxisAlignment", isCorrect: false),
    ],
    correctAnswer: const LayOutOption(text: "Align", isCorrect: true),
  ),
  
  LayOutQuestion(
    id: 7,
    text:
        "Which property is used to align Row or Column children differently based on available space?",
    options: [
      const LayOutOption(text: "Expanded", isCorrect: false),
      const LayOutOption(text: "Flex", isCorrect: true),
      const LayOutOption(text: "FittedBox", isCorrect: false),
      const LayOutOption(text: "Wrap", isCorrect: false),
    ],
    correctAnswer: const LayOutOption(text: "Flex", isCorrect: true),
  ),
];
