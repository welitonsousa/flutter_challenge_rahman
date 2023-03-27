import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: ChallengeComponent()),
    );
  }
}

class ChallengeComponent extends StatelessWidget {
  const ChallengeComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.black),
      ),
      child: Row(
        children: [
          Container(
            width: 10,
            height: 40,
            decoration: const BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(4),
                topLeft: Radius.circular(4),
              ),
            ),
          ),
          Container(width: 1, height: 40, color: Colors.black),
          const Icon(Icons.notifications_none),
        ],
      ),
    );
  }
}
