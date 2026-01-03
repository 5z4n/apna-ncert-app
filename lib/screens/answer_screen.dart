import 'package:flutter/material.dart';
import '../models/answer_response.dart';

class AnswerScreen extends StatelessWidget {
  final AnswerResponse response;
  const AnswerScreen({super.key, required this.response});

  @override
  Widget build(BuildContext context) {
    final s = response.source;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Answer'),
        backgroundColor: const Color(0xFF03256C),
      ),
      body: Column(
        children: [
          const LinearProgressIndicator(
            value: 1,
            color: Color(0xFF06BEE1),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    response.answer,
                    style: const TextStyle(
                      fontSize: 16,
                      height: 1.5,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: const Color(0xFF1768AC).withOpacity(0.1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      'Source: Class ${s.className} | ${s.subject} | ${s.file}',
                      style: const TextStyle(
                        fontSize: 12,
                        color: Color(0xFF1768AC),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: ElevatedButton.icon(
        onPressed: () => Navigator.pop(context),
        icon: const Icon(Icons.refresh),
        label: const Text('Ask another'),
      ),
    );
  }
}
