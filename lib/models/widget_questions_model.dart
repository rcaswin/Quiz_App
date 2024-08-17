class WidgetQuestion {
  final int id;
  final String text;
  final List<WiidgetOption> options;
  bool isLocked;
  WiidgetOption? selectedWiidgetOption;
  WiidgetOption correctAnswer;

  WidgetQuestion({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedWiidgetOption,
    required this.id,
    required this.correctAnswer,
  });

  WidgetQuestion copyWith() {
    return WidgetQuestion(
      id: id,
      text: text,
      options: options
          .map((option) =>
              WiidgetOption(text: option.text, isCorrect: option.isCorrect))
          .toList(),
      isLocked: isLocked,
      selectedWiidgetOption: selectedWiidgetOption,
      correctAnswer: correctAnswer,
    );
  }
}

class WiidgetOption {
  final String? text;
  final bool? isCorrect;

  const WiidgetOption({
    this.text,
    this.isCorrect,
  });
}

final widgetQuestionsList = [
  WidgetQuestion(
    id: 0,
    text: "What is the capital of Java?",
    options: [
      const WiidgetOption(text: "Jakarta", isCorrect: true),
      const WiidgetOption(text: "Surabaya", isCorrect: false),
      const WiidgetOption(text: "Bandung", isCorrect: false),
      const WiidgetOption(text: "Yogyakarta", isCorrect: false),
    ],
    correctAnswer: const WiidgetOption(text: "Jakarta", isCorrect: true),
  ),
  WidgetQuestion(
    id: 1,
    text: "Which keyword is used to declare a variable in Java?",
    options: [
      const WiidgetOption(text: "def", isCorrect: false),
      const WiidgetOption(text: "var", isCorrect: false),
      const WiidgetOption(text: "int", isCorrect: true),
      const WiidgetOption(text: "let", isCorrect: false),
    ],
    correctAnswer: const WiidgetOption(text: "int", isCorrect: true),
  ),
  WidgetQuestion(
    id: 2,
    text: "What does JVM stand for?",
    options: [
      const WiidgetOption(text: "Java Virtual Machine", isCorrect: true),
      const WiidgetOption(text: "Java Virtual Memory", isCorrect: false),
      const WiidgetOption(text: "Java Visual Model", isCorrect: false),
      const WiidgetOption(text: "Java Variable Manager", isCorrect: false),
    ],
    correctAnswer: const WiidgetOption(text: "Java Virtual Machine", isCorrect: true),
  ),
  WidgetQuestion(
    id: 3,
    text: "Which loop is used to iterate through an array in Java?",
    options: [
      const WiidgetOption(text: "for", isCorrect: true),
      const WiidgetOption(text: "while", isCorrect: false),
      const WiidgetOption(text: "do-while", isCorrect: false),
      const WiidgetOption(text: "foreach", isCorrect: false),
    ],
    correctAnswer: const WiidgetOption(text: "for", isCorrect: true),
  ),
  WidgetQuestion(
    id: 4,
    text: "Which data type is used to store decimal numbers in Java?",
    options: [
      const WiidgetOption(text: "int", isCorrect: false),
      const WiidgetOption(text: "double", isCorrect: true),
      const WiidgetOption(text: "float", isCorrect: false),
      const WiidgetOption(text: "string", isCorrect: false),
    ],
    correctAnswer: const WiidgetOption(text: "double", isCorrect: true),
  ),
  WidgetQuestion(
    id: 5,
    text: "Which keyword is used to define a constant in Java?",
    options: [
      const WiidgetOption(text: "final", isCorrect: true),
      const WiidgetOption(text: "const", isCorrect: false),
      const WiidgetOption(text: "static", isCorrect: false),
      const WiidgetOption(text: "let", isCorrect: false),
    ],
    correctAnswer: const WiidgetOption(text: "final", isCorrect: true),
  ),
  WidgetQuestion(
    id: 6,
    text: "What is the output of 5 + 2 * 3 in Java?",
    options: [
      const WiidgetOption(text: "21", isCorrect: false),
      const WiidgetOption(text: "15", isCorrect: false),
      const WiidgetOption(text: "11", isCorrect: true),
      const WiidgetOption(text: "9", isCorrect: false),
    ],
    correctAnswer: const WiidgetOption(text: "11", isCorrect: true),
  ),
  WidgetQuestion(
    id: 7,
    text: "What is the correct syntax to declare a method in Java?",
    options: [
      const WiidgetOption(text: "method myMethod() {}", isCorrect: false),
      const WiidgetOption(text: "def myMethod() {}", isCorrect: false),
      const WiidgetOption(text: "void myMethod() {}", isCorrect: true),
      const WiidgetOption(text: "function myMethod() {}", isCorrect: false),
    ],
    correctAnswer: const WiidgetOption(text: "void myMethod() {}", isCorrect: true),
  ),
  WidgetQuestion(
    id: 8,
    text: "Which of the following is a Java keyword to define a class?",
    options: [
      const WiidgetOption(text: "class", isCorrect: true),
      const WiidgetOption(text: "type", isCorrect: false),
      const WiidgetOption(text: "struct", isCorrect: false),
      const WiidgetOption(text: "define", isCorrect: false),
    ],
    correctAnswer: const WiidgetOption(text: "class", isCorrect: true),
  ),
  WidgetQuestion(
    id: 9,
    text: "What is the output of 10 % 3 in Java?",
    options: [
      const WiidgetOption(text: "3", isCorrect: false),
      const WiidgetOption(text: "0.333", isCorrect: false),
      const WiidgetOption(text: "1", isCorrect: true),
      const WiidgetOption(text: "2", isCorrect: false),
    ],
    correctAnswer: const WiidgetOption(text: "1", isCorrect: true),
  ),
  WidgetQuestion(
    id: 10,
    text: "Which loop is used when the number of iterations is known in advance?",
    options: [
      const WiidgetOption(text: "for", isCorrect: true),
      const WiidgetOption(text: "while", isCorrect: false),
      const WiidgetOption(text: "do-while", isCorrect: false),
      const WiidgetOption(text: "foreach", isCorrect: false),
    ],
    correctAnswer: const WiidgetOption(text: "for", isCorrect: true),
  ),
  WidgetQuestion(
    id: 11,
    text: "Which keyword is used to exit from a loop in Java?",
    options: [
      const WiidgetOption(text: "exit", isCorrect: false),
      const WiidgetOption(text: "break", isCorrect: true),
      const WiidgetOption(text: "continue", isCorrect: false),
      const WiidgetOption(text: "return", isCorrect: false),
    ],
    correctAnswer: const WiidgetOption(text: "break", isCorrect: true),
  ),
  WidgetQuestion(
    id: 12,
    text: "What is the default value of a boolean variable in Java?",
    options: [
      const WiidgetOption(text: "0", isCorrect: false),
      const WiidgetOption(text: "1", isCorrect: false),
      const WiidgetOption(text: "true", isCorrect: false),
      const WiidgetOption(text: "false", isCorrect: true),
    ],
    correctAnswer: const WiidgetOption(text: "false", isCorrect: true),
  ),
  WidgetQuestion(
    id: 13,
    text: "Which of the following is used to read input from the user in Java?",
    options: [
      const WiidgetOption(text: "read()", isCorrect: false),
      const WiidgetOption(text: "scanf()", isCorrect: false),
      const WiidgetOption(text: "input()", isCorrect: false),
      const WiidgetOption(text: "Scanner", isCorrect: true),
    ],
    correctAnswer: const WiidgetOption(text: "Scanner", isCorrect: true),
  ),
  WidgetQuestion(
    id: 14,
    text: "What is the correct syntax to print 'Hello World' in Java?",
    options: [
      const WiidgetOption(text: "console.log('Hello World');", isCorrect: false),
      const WiidgetOption(text: "print('Hello World');", isCorrect: false),
      const WiidgetOption(text: "System.out.println('Hello World');", isCorrect: true),
      const WiidgetOption(text: "echo 'Hello World';", isCorrect: false),
    ],
    correctAnswer: const WiidgetOption(text: "System.out.println('Hello World');", isCorrect: true),
  ),
];
