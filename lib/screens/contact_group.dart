import 'package:flutter/material.dart';
import 'package:voloapp/classes/contacts_group.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  State<ContactScreen> createState() => _ContactState();
}

class _ContactState extends State<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    const String title = 'Grupa kontaktów';
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        child: const Icon(Icons.edit),
      ),
    );
  }
}
