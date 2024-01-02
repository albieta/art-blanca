import 'package:flutter/material.dart';

class AboutMePage extends StatelessWidget {
  const AboutMePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('About Blanca Roma Gómez'),
        ),
      ),
      body: const Center(
        child: Text('This is a sample text. '),
      ),
    );
  }
}
