
import 'dart:async';

import 'package:chat_gpt/constants/constants.dart';
import 'package:flutter/material.dart';

import '../services/assets_manager.dart';
import 'chat_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const ChatScreen()));
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AssetsManager.openaiLogo,
              width: MediaQuery.of(context).size.width - 300,
              height: MediaQuery.of(context).size.height - 300,
            ),
          ],
        ),
      ),
    );
  }
}
