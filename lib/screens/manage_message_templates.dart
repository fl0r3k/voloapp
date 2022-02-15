import 'package:flutter/material.dart';
import 'package:voloapp/classes/message_template.dart';

class ManageMessageTemplatesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const String title = 'Szablony wiadomości';
    List<MessageTemplate> items = [
      MessageTemplate(
          id: '01', title: 'Śniadanie', body: 'Wiadomość na śniadanie'),
      MessageTemplate(id: '02', title: 'Obiad', body: 'Wiadomość na obiad'),
      MessageTemplate(id: '03', title: 'Kolacja', body: 'Wiadomość na kolacja'),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(items[index].title),
              subtitle: Text(items[index].body),
              trailing: const Icon(Icons.more_vert),
              isThreeLine: true,
            ),
          );
        },
      ),
    );
  }
}
