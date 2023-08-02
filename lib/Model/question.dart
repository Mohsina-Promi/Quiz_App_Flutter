
class QuizQuestionModel {
  String questionname;
  String optionA;
  String optionB;
  String optionC;
  String optionD;
  String answer;

   QuizQuestionModel(
       {required this.questionname,
      required this.optionA,
      required this.optionB,
      required this.optionC,
      required this.optionD,
      required this.answer});
}

List<QuizQuestionModel> QuestionList=[

  QuizQuestionModel(questionname: 'Q1. Who invented Java Programming?', optionA:
  'a) Guido van Rossum', optionB:'b) James Gosling', optionC: 'c) Dennis Ritchie',
      optionD: 'd) Bjarne Stroustrup', answer: 'b) James Gosling'),
  QuizQuestionModel(questionname: 'Q2. Which component is used to compile, debug'
      ' and execute the java programs?', optionA: 'a) JRE', optionB: 'b) JIT',
      optionC: 'c) JDK', optionD: 'd) JVM', answer:'c) JDK'),

];

// final questions = const [
//
//   {
//     'questionText': 'Q1. Who invented Java Programming?',
//     'options' : [
//       {'text' : 'a) Guido van Rossum'},
//       {'text' : 'b) James Gosling'},
//       {'text' : 'c) Dennis Ritchie'},
//       {'text' : 'd) Bjarne Stroustrup'},
//     ],
//     'answer': [
//       {'text': 'b) James Gosling'},
//     ],
//   },
//
//   {
//     'questionText': 'Q2. Which statement is true about Java?',
//     'options': [
//       {'text': 'a) Java is a sequence-dependent programming language'},
//       {'text': 'b) Java is a code dependent programming language'},
//       {'text': 'c) Java is a platform-dependent programming language'},
//       {'text': 'd) Java is a platform-independent programming language'},
//     ],
//     'answer': [
//       {'text': 'd) Java is a platform-independent programming language'},
//     ],
//   },
//   {
//     'questionText': 'Q3. Which component is used to compile, debug and execute the java programs?',
//     'options': [
//       {'text': 'a) JRE'},
//       {'text': 'b) JIT'},
//       {'text': 'c) JDK'},
//       {'text': 'd) JVM'},
//     ],
//     'answer': [
//       {'text': 'c) JDK'},
//     ],
//   },
//
//
//
// ];