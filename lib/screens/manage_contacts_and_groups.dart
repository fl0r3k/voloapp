import 'package:flutter/material.dart';
import 'package:voloapp/classes/receiver.dart';

class ManageContactsAndGroupsScreen extends StatefulWidget {
  const ManageContactsAndGroupsScreen({Key? key}) : super(key: key);

  @override
  State<ManageContactsAndGroupsScreen> createState() =>
      _ManageContactsAndGroupsState();
}

class _ManageContactsAndGroupsState
    extends State<ManageContactsAndGroupsScreen> {
  List<Receiver> items = [
    Receiver(id: '1', name: 'Jasiek', type: 'contact'),
    Receiver(id: '2', name: 'Franek', type: 'contact'),
    Receiver(id: '3', name: 'Moja grupa', type: 'group'),
  ];

  @override
  Widget build(BuildContext context) {
    const String title = 'Wolontariusze i grupy odbiorców';
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Icon(
                  items[index].type == 'contact' ? Icons.person : Icons.group),
              title: Text(items[index].name),
              trailing: const Icon(Icons.more_vert),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
