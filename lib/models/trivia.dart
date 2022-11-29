import 'dart:convert';

List<Trivia> triviaFromJson(String str) =>
    List<Trivia>.from(json.decode(str).map((x) => Trivia.fromJson(x)));

String triviaToJson(List<Trivia> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Trivia {
  Trivia({
    required this.question,
    required this.answer,
  });

  String question;
  String answer;

  factory Trivia.fromJson(Map<String, dynamic> json) => Trivia(
        question: json["question"],
        answer: json["answer"],
      );

  Map<String, dynamic> toJson() => {
        "question": question,
        "answer": answer,
      };
}
