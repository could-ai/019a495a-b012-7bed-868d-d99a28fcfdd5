import 'package:flutter/material.dart';
import 'package:couldai_user_app/chat_screen.dart';

class ChatHomeScreen extends StatefulWidget {
  const ChatHomeScreen({super.key});

  @override
  State<ChatHomeScreen> createState() => _ChatHomeScreenState();
}

class _ChatHomeScreenState extends State<ChatHomeScreen> {
  final List<Map<String, String>> _chats = [
    {"name": "Alice", "message": "Hey, how are you?", "time": "10:30 AM"},
    {"name": "Bob", "message": "See you tomorrow!", "time": "Yesterday"},
    {"name": "Charlie", "message": "Thanks!", "time": "9/25/24"},
    {"name": "David", "message": "Let's catch up soon.", "time": "9/24/24"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Secure Chat'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: ListView.builder(
        itemCount: _chats.length,
        itemBuilder: (context, index) {
          final chat = _chats[index];
          return ListTile(
            leading: CircleAvatar(
              child: Text(chat['name']![0]),
            ),
            title: Text(chat['name']!),
            subtitle: Text(chat['message']!),
            trailing: Text(chat['time']!),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChatScreen(name: chat['name']!),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // TODO: Implement new chat functionality
        },
        backgroundColor: Theme.of(context).primaryColor,
        child: const Icon(Icons.chat),
      ),
    );
  }
}
