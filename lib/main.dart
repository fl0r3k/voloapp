import 'package:flutter/material.dart';
// import 'package:voloapp/screens/home.dart';
// import 'package:voloapp/screens/manage_message_templates.dart';
import 'package:voloapp/screens/manage_contacts_and_groups.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'VoloApp';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: HomeScreen(),
      // home: ManageMessageTemplatesScreen(),
      home: ManageContactsAndGroupsScreen(),
    );
  }
}
