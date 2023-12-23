import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  static const String routeName = 'two';
  final String greetings;

  const PageTwo({super.key, required this.greetings});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Two'),
      ),
      body: Center(
        child: Text(
          greetings,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
    );
  }
}
