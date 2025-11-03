import 'package:flutter/material.dart';
import 'package:couldai_user_app/chat_home_screen.dart';

void main() {
  runApp(const ChatApp());
}

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Secure Chat',
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.teal,
        hintColor: Colors.tealAccent,
        colorScheme: ColorScheme.dark().copyWith(
          primary: Colors.teal,
          secondary: Colors.tealAccent,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const ChatHomeScreen(),
    );
  }
}
