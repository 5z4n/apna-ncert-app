class AnswerResponse {
  final String answer;
  final Source source;

  AnswerResponse({
    required this.answer,
    required this.source,
  });

  factory AnswerResponse.fromJson(Map<String, dynamic> json) {
    return AnswerResponse(
      answer: json['answer'] ?? '',
      source: Source.fromJson(json['source'] ?? {}),
    );
  }
}

class Source {
  final String className;
  final String subject;
  final String file;

  Source({
    required this.className,
    required this.subject,
    required this.file,
  });

  factory Source.fromJson(Map<String, dynamic> json) {
    return Source(
      className: json['class'] ?? '',
      subject: json['subject'] ?? '',
      file: json['file'] ?? '',
    );
  }
}
