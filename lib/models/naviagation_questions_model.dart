class NavigateQuestion {
  final int id;
  final String text;
  final List<NavigationsOption> options;
  bool isLocked;
  NavigationsOption? selectedWiidgetOption;
  NavigationsOption? correctAnswer;

  NavigateQuestion({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedWiidgetOption,
    required this.id,
    required this.correctAnswer,
  });

  NavigateQuestion copyWith() {
    return NavigateQuestion(
      id: id,
      text: text,
      options: options
          .map((option) =>
              NavigationsOption(text: option.text, isCorrect: option.isCorrect))
          .toList(),
      isLocked: isLocked,
      selectedWiidgetOption: selectedWiidgetOption,
      correctAnswer: correctAnswer,
    );
  }
}

class NavigationsOption {
  final String text;
  final bool isCorrect;

  const NavigationsOption({
    required this.text,
    required this.isCorrect,
  });
}

final navigateQuestionsList = [
  NavigateQuestion(
    id: 0,
    text:
        "Which HTML element is used to create a hyperlink?",
    options: [
      const NavigationsOption(text: "<a>", isCorrect: true),
      const NavigationsOption(text: "<link>", isCorrect: false),
      const NavigationsOption(text: "<href>", isCorrect: false),
      const NavigationsOption(text: "<p>", isCorrect: false),
    ],
    correctAnswer: const NavigationsOption(text: "<a>", isCorrect: true),
  ),
  NavigateQuestion(
    id: 1,
    text:
        "Which attribute specifies the URL of the page the link goes to?",
    options: [
      const NavigationsOption(text: "href", isCorrect: true),
      const NavigationsOption(text: "url", isCorrect: false),
      const NavigationsOption(text: "link", isCorrect: false),
      const NavigationsOption(text: "src", isCorrect: false),
    ],
    correctAnswer: const NavigationsOption(text: "href", isCorrect: true),
  ),
  NavigateQuestion(
    id: 2,
    text:
        "Which attribute specifies where to open the linked document?",
    options: [
      const NavigationsOption(text: "target", isCorrect: true),
      const NavigationsOption(text: "location", isCorrect: false),
      const NavigationsOption(text: "href", isCorrect: false),
      const NavigationsOption(text: "source", isCorrect: false),
    ],
    correctAnswer: const NavigationsOption(text: "target", isCorrect: true),
  ),

  NavigateQuestion(
    id: 3,
    text:
        "Which value of the 'target' attribute opens the linked document in a new window?",
    options: [
      const NavigationsOption(text: "_self", isCorrect: false),
      const NavigationsOption(text: "_parent", isCorrect: false),
      const NavigationsOption(text: "_blank", isCorrect: true),
      const NavigationsOption(text: "_top", isCorrect: false),
    ],
    correctAnswer: const NavigationsOption(text: "_blank", isCorrect: true),
  ),
  NavigateQuestion(
    id: 4,
    text:
        "Which attribute is used to specify the relationship between the current document and the linked document?",
    options: [
      const NavigationsOption(text: "target", isCorrect: false),
      const NavigationsOption(text: "rel", isCorrect: true),
      const NavigationsOption(text: "href", isCorrect: false),
      const NavigationsOption(text: "link", isCorrect: false),
    ],
    correctAnswer: const NavigationsOption(text: "rel", isCorrect: true),
  ),
  NavigateQuestion(
    id: 5,
    text:
        "Which HTML element is used to define navigation links?",
    options: [
      const NavigationsOption(text: "<nav>", isCorrect: true),
      const NavigationsOption(text: "<header>", isCorrect: false),
      const NavigationsOption(text: "<section>", isCorrect: false),
      const NavigationsOption(text: "<footer>", isCorrect: false),
    ],
    correctAnswer: const NavigationsOption(text: "<nav>", isCorrect: true),
  ),
  NavigateQuestion(
    id: 6,
    text:
        "Which HTML attribute specifies the location of the linked document?",
    options: [
      const NavigationsOption(text: "url", isCorrect: false),
      const NavigationsOption(text: "src", isCorrect: false),
      const NavigationsOption(text: "href", isCorrect: true),
      const NavigationsOption(text: "link", isCorrect: false),
    ],
    correctAnswer: const NavigationsOption(text: "href", isCorrect: true),
  ),
  NavigateQuestion(
    id: 7,
    text:
        "Which HTML attribute is used to specify the media type of the linked document?",
    options: [
      const NavigationsOption(text: "type", isCorrect: true),
      const NavigationsOption(text: "media", isCorrect: false),
      const NavigationsOption(text: "rel", isCorrect: false),
      const NavigationsOption(text: "target", isCorrect: false),
    ],
    correctAnswer: const NavigationsOption(text: "type", isCorrect: true),
  ),

  NavigateQuestion(
    id: 8,
    text:
        "Which HTML element defines the structure of an HTML document?",
    options: [
      const NavigationsOption(text: "<head>", isCorrect: false),
      const NavigationsOption(text: "<html>", isCorrect: true),
      const NavigationsOption(text: "<body>", isCorrect: false),
      const NavigationsOption(text: "<title>", isCorrect: false),
    ],
    correctAnswer: const NavigationsOption(text: "<html>", isCorrect: true),
  ),

  NavigateQuestion(
    id: 9,
    text:
        "Which HTML attribute is used to specify the character encoding for the linked document?",
    options: [
      const NavigationsOption(text: "charset", isCorrect: true),
      const NavigationsOption(text: "encoding", isCorrect: false),
      const NavigationsOption(text: "charcode", isCorrect: false),
      const NavigationsOption(text: "codepage", isCorrect: false),
    ],
    correctAnswer: const NavigationsOption(text: "charset", isCorrect: true),
  ),

  NavigateQuestion(
    id: 10,
    text:
        "Which HTML attribute specifies the language of the linked document?",
    options: [
      const NavigationsOption(text: "lang", isCorrect: true),
      const NavigationsOption(text: "language", isCorrect: false),
      const NavigationsOption(text: "locale", isCorrect: false),
      const NavigationsOption(text: "languagetag", isCorrect: false),
    ],
    correctAnswer: const NavigationsOption(text: "lang", isCorrect: true),
  ),

  NavigateQuestion(
    id: 11,
    text:
        "Which HTML attribute specifies the media type of the linked document?",
    options: [
      const NavigationsOption(text: "media", isCorrect: true),
      const NavigationsOption(text: "type", isCorrect: false),
      const NavigationsOption(text: "src", isCorrect: false),
      const NavigationsOption(text: "target", isCorrect: false),
    ],
    correctAnswer: const NavigationsOption(text: "media", isCorrect: true),
  ),

  NavigateQuestion(
    id: 12,
    text:
        "Which HTML element is used to define an internal style sheet?",
    options: [
      const NavigationsOption(text: "<style>", isCorrect: true),
      const NavigationsOption(text: "<script>", isCorrect: false),
      const NavigationsOption(text: "<link>", isCorrect: false),
      const NavigationsOption(text: "<meta>", isCorrect: false),
    ],
    correctAnswer: const NavigationsOption(text: "<style>", isCorrect: true),
  ),

  NavigateQuestion(
    id: 13,
    text:
        "Which HTML attribute defines the title of a linked document?",
    options: [
      const NavigationsOption(text: "title", isCorrect: true),
      const NavigationsOption(text: "name", isCorrect: false),
      const NavigationsOption(text: "label", isCorrect: false),
      const NavigationsOption(text: "caption", isCorrect: false),
    ],
    correctAnswer: const NavigationsOption(text: "title", isCorrect: true),
  ),

  NavigateQuestion(
    id: 14,
    text:
        "Which HTML element is used to define a base URL for all the links on a page?",
    options: [
      const NavigationsOption(text: "<base>", isCorrect: true),
      const NavigationsOption(text: "<href>", isCorrect: false),
      const NavigationsOption(text: "<link>", isCorrect: false),
      const NavigationsOption(text: "<url>", isCorrect: false),
    ],
    correctAnswer: const NavigationsOption(text: "<base>", isCorrect: true),
  ),
];
