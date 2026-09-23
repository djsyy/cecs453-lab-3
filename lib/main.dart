import 'package:flutter/material.dart';

void main() {
  runApp(const AffirmationsApp());
}

class AffirmationsApp extends StatelessWidget {
  const AffirmationsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Affirmations',
      debugShowCheckedModeBanner: false,
      home: const AffirmationsScreen(),
    );
  }
}

class AffirmationsScreen extends StatelessWidget {
  const AffirmationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> affirmations = [
      {
        'image': 'assets/images/view1.jpg',
        'text': 'Why fit in when you were born to stand out?',
      },
      {
        'image': 'assets/images/view2.jpg',
        'text': 'Be yourself; everyone else is already taken.',
      },
      {
        'image': 'assets/images/view3.jpg',
        'text': "Despite everything, it's still you.",
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Affirmations'),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: affirmations.length,
        itemBuilder: (context, index) {
          final affirmation = affirmations[index];

          return Card(
            margin: const EdgeInsets.only(bottom: 16),
            child: Column(
              children: [
                Image.asset(
                  affirmation['image']!,
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    affirmation['text']!,
                    style: const TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}