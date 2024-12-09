// ignore_for_file: public_member_api_docs, sort_constructors_first
class QuestionModel {
  final String question;
  final String answer;
  final List<String> options;
  final bool hasAnswered;
  String userAnswer;
  QuestionModel({
    required this.question,
    required this.answer,
    required this.options,
    this.hasAnswered = false,
    this.userAnswer = "",
  });


}

List<QuestionModel> sampleQuestions = [
  QuestionModel(
    question: "Motor racing is the ______ sport in the world",
    answer: "fastest",
    options: [
      "fastest",
      "fast",
      "faster",
      "fasting",
    ],
  ),
  QuestionModel(
    question: "The ______ is the largest planet in the solar system",
    answer: "Jupiter",
    options: [
      "Jupiter",
      "Saturn",
      "Earth",
      "Mars",
    ],
  ),
  QuestionModel(
    question: "The ______ is the largest country in the world",
    answer: "Russia",
    options: [
      "Russia",
      "China",
      "USA",
      "Canada",
    ],
  ),
  QuestionModel(
    question: "The ______ is the largest ocean in the world",
    answer: "Pacific",
    options: [
      "Pacific",
      "Atlantic",
      "Indian",
      "Arctic",
    ],
  ),
  QuestionModel(
    question: "The ______ is the largest continent in the world",
    answer: "Asia",
    options: [
      "Asia",
      "Africa",
      "Europe",
      "North America",
    ],
  ),
  QuestionModel(
    question: "The ______ is the largest river in the world",
    answer: "Amazon",
    options: [
      "Amazon",
      "Nile",
      "Yangtze",
      "Mississippi",
    ],
  ),
  QuestionModel(
    question: "The ______ is the largest lake in the world",
    answer: "Caspian",
    options: [
      "Caspian",
      "Superior",
      "Victoria",
      "Huron",
    ],
  ),
  QuestionModel(
    question: "The ______ is the largest mountain in the world",
    answer: "Mount Everest",
    options: [
      "Mount Everest",
      "K2",
      "Kanchenjunga",
      "Lhotse",
    ],
  ),
  QuestionModel(
    question: "The ______ is the largest desert in the world",
    answer: "Sahara",
    options: [
      "Sahara",
      "Gobi",
      "Kalahari",
      "Thar",
    ],
  ),
  QuestionModel(
    question: "The ______ is the largest island in the world",
    answer: "Greenland",
    options: [
      "Greenland",
      "New Guinea",
      "Borneo",
      "Madagascar",
    ],
  ),
];
