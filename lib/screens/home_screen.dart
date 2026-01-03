import 'package:flutter/material.dart';
import '../services/api_service.dart';
import 'answer_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _controller = TextEditingController();
  bool _loading = false;

  Future<void> _ask() async {
    if (_controller.text.trim().isEmpty) return;

    setState(() => _loading = true);
    final response = await ApiService.askQuestion(_controller.text.trim());
    setState(() => _loading = false);

    if (!mounted || response == null) return;

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => AnswerScreen(response: response),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Apna NCERT')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                hintText: 'Ask an NCERT question…',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            const SizedBox(height: 16),

            if (_loading)
              const LinearProgressIndicator(
                color: Color(0xFF06BEE1),
              ),

            const SizedBox(height: 16),

            ElevatedButton.icon(
              onPressed: _ask,
              icon: const Icon(Icons.send),
              label: const Text('Ask'),
            ),
          ],
        ),
      ),
    );
  }
}
