class StateQuestion {
  final int id;
  final String text;
  final List<StateOption> options;
  bool isLocked;
  StateOption? selectedWiidgetOption;
  StateOption? correctAnswer;

  StateQuestion({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedWiidgetOption,
    required this.id,
    required this.correctAnswer,
  });
  StateQuestion copyWith() {
    return StateQuestion(
      id: id,
      text: text,
      options: options
          .map((option) =>
              StateOption(text: option.text, isCorrect: option.isCorrect))
          .toList(),
      isLocked: isLocked,
      selectedWiidgetOption: selectedWiidgetOption,
      correctAnswer: correctAnswer,
    );
  }
}

class StateOption {
  final String text;
  final bool isCorrect;

  const StateOption({
    required this.text,
    required this.isCorrect,
  });
}

final stateQuestionsList = [
  StateQuestion(
    id: 0,
    text: "Which keyword is used to define a function in Python?",
    options: [
      const StateOption(text: "func", isCorrect: false),
      const StateOption(text: "def", isCorrect: true),
      const StateOption(text: "define", isCorrect: false),
      const StateOption(text: "function", isCorrect: false),
    ],
    correctAnswer: const StateOption(text: "def", isCorrect: true),
  ),
  StateQuestion(
    id: 1,
    text: "What is the output of print('Hello'* 3) in Python?",
    options: [
      const StateOption(text: "3", isCorrect: false),
      const StateOption(text: "HelloHello", isCorrect: false),
      const StateOption(text: "Hello Hello Hello", isCorrect: false),
      const StateOption(text: "HelloHelloHello", isCorrect: true),
    ],
    correctAnswer: const StateOption(text: "HelloHelloHello", isCorrect: true),
  ),
  StateQuestion(
    id: 2,
    text: "Which data type is used to store a sequence of characters in Python?",
    options: [
      const StateOption(text: "int", isCorrect: false),
      const StateOption(text: "string", isCorrect: true),
      const StateOption(text: "float", isCorrect: false),
      const StateOption(text: "list", isCorrect: false),
    ],
    correctAnswer: const StateOption(text: "string", isCorrect: true),
  ),
  StateQuestion(
    id: 3,
    text: "What does the 'self' keyword refer to in Python?",
    options: [
      const StateOption(text: "The current class", isCorrect: true),
      const StateOption(text: "The current method", isCorrect: false),
      const StateOption(text: "The parent class", isCorrect: false),
      const StateOption(text: "The global namespace", isCorrect: false),
    ],
    correctAnswer: const StateOption(text: "The current class", isCorrect: true),
  ),
  StateQuestion(
    id: 4,
    text: "Which of the following is used to define a class in Python?",
    options: [
      const StateOption(text: "class", isCorrect: true),
      const StateOption(text: "define", isCorrect: false),
      const StateOption(text: "function", isCorrect: false),
      const StateOption(text: "method", isCorrect: false),
    ],
    correctAnswer: const StateOption(text: "class", isCorrect: true),
  ),
  StateQuestion(
    id: 5,
    text: "What is the output of 10 % 3 in Python?",
    options: [
      const StateOption(text: "3", isCorrect: false),
      const StateOption(text: "0.333", isCorrect: false),
      const StateOption(text: "1", isCorrect: true),
      const StateOption(text: "2", isCorrect: false),
    ],
    correctAnswer: const StateOption(text: "1", isCorrect: true),
  ),
  StateQuestion(
    id: 6,
    text: "What is the correct syntax to declare a variable in Python?",
    options: [
      const StateOption(text: "var x = 5", isCorrect: false),
      const StateOption(text: "x = 5", isCorrect: true),
      const StateOption(text: "int x = 5", isCorrect: false),
      const StateOption(text: "x = 5", isCorrect: false),
    ],
    correctAnswer: const StateOption(text: "x = 5", isCorrect: true),
  ),
  StateQuestion(
    id: 7,
    text: "Which of the following is used to iterate through a list in Python?",
    options: [
      const StateOption(text: "for", isCorrect: true),
      const StateOption(text: "while", isCorrect: false),
      const StateOption(text: "do-while", isCorrect: false),
      const StateOption(text: "foreach", isCorrect: false),
    ],
    correctAnswer: const StateOption(text: "for", isCorrect: true),
  ),
  StateQuestion(
    id: 8,
    text: "What is the correct syntax to define a function in Python?",
    options: [
      const StateOption(text: "function myFunction():", isCorrect: false),
      const StateOption(text: "def myFunction():", isCorrect: true),
      const StateOption(text: "method myFunction():", isCorrect: false),
      const StateOption(text: "define myFunction():", isCorrect: false),
    ],
    correctAnswer: const StateOption(text: "def myFunction():", isCorrect: true),
  ),
  StateQuestion(
    id: 9,
    text: "Which keyword is used to exit a loop in Python?",
    options: [
      const StateOption(text: "break", isCorrect: true),
      const StateOption(text: "exit", isCorrect: false),
      const StateOption(text: "continue", isCorrect: false),
      const StateOption(text: "return", isCorrect: false),
    ],
    correctAnswer: const StateOption(text: "break", isCorrect: true),
  ),
  StateQuestion(
    id: 10,
    text: "Which of the following is used to check if a key exists in a dictionary in Python?",
    options: [
      const StateOption(text: "contains()", isCorrect: false),
      const StateOption(text: "exists()", isCorrect: false),
      const StateOption(text: "hasKey()", isCorrect: false),
      const StateOption(text: "in", isCorrect: true),
    ],
    correctAnswer: const StateOption(text: "in", isCorrect: true),
  ),
  StateQuestion(
    id: 11,
    text: "What is the output of the expression '2' + '3' in Python?",
    options: [
      const StateOption(text: "5", isCorrect: false),
      const StateOption(text: "23", isCorrect: true),
      const StateOption(text: "32", isCorrect: false),
      const StateOption(text: "6", isCorrect: false),
    ],
    correctAnswer: const StateOption(text: "23", isCorrect: true),
  ),
  StateQuestion(
    id: 12,
    text: "Which of the following is used to open a file in Python?",
    options: [
      const StateOption(text: "open()", isCorrect: true),
      const StateOption(text: "read()", isCorrect: false),
      const StateOption(text: "file()", isCorrect: false),
      const StateOption(text: "readFile()", isCorrect: false),
    ],
    correctAnswer: const StateOption(text: "open()", isCorrect: true),
  ),
  StateQuestion(
    id: 13,
    text: "Which module is used to work with regular expressions in Python?",
    options: [
      const StateOption(text: "regex", isCorrect: false),
      const StateOption(text: "re", isCorrect: true),
      const StateOption(text: "regexp", isCorrect: false),
      const StateOption(text: "reg", isCorrect: false),
    ],
    correctAnswer: const StateOption(text: "re", isCorrect: true),
  ),
  StateQuestion(
    id: 14,
    text: "Which of the following is used to remove leading and trailing whitespaces from a string in Python?",
    options: [
      const StateOption(text: "trim()", isCorrect: false),
      const StateOption(text: "strip()", isCorrect: true),
      const StateOption(text: "removeWhitespace()", isCorrect: false),
      const StateOption(text: "clean()", isCorrect: false),
    ],
    correctAnswer: const StateOption(text: "strip()", isCorrect: true),
  ),
];
