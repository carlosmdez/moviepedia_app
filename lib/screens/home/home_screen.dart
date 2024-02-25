import 'package:flutter/material.dart';
import 'package:moviepedia_app/config/constants/env.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(Env.movieDbApiKey),
      ),
    );
  }
}
