import 'package:chat_app/widgets/chat_messages.dart';
import 'package:chat_app/widgets/new_message.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Chat'),
        actions: [
          IconButton(
            icon: Icon(
              Icons.logout,
              color: Theme.of(context).colorScheme.primary,
            ),
            onPressed: () {
              // this will make a trigger to the authStateChanges stream
              FirebaseAuth.instance.signOut();
            },
          ),
        ],
      ),
      body: const Column(children: [
        Expanded(
          child: ChatMessages(),
        ),
        NewMessage(),
      ]),
    );
  }
}
