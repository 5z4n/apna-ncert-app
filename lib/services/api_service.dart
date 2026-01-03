import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/answer_response.dart';

class ApiService {
  //static const String baseUrl = "http://127.0.0.1:8000";
  static const String baseUrl =
    "https://ran-families-should-nutrition.trycloudflare.com";


  static Future<AnswerResponse?> askQuestion(String question) async {
    try {
      final response = await http.post(
        Uri.parse('$baseUrl/ask'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'question': question}),
      );

      if (response.statusCode == 200) {
        return AnswerResponse.fromJson(jsonDecode(response.body));
      }
    } catch (e) {
      print("API error: $e");
    }
    return null;
  }
}
