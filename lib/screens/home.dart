import 'package:flutter/material.dart';
import 'package:voloapp/widgets/home_screen_button.dart';
import 'package:voloapp/screens/message_wizzard.dart';
import 'package:voloapp/screens/manage_message_templates.dart';
import 'package:voloapp/screens/manage_contacts_and_groups.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              HomeScreenButton(
                text: 'Utwórz wiadomość\nz szablonu',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MessageWizardScreen()),
                  );
                },
              ),
              HomeScreenButton(
                text: 'Zarządzaj szablonami\nwiadomości',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ManageMessageTemplatesScreen()),
                  );
                },
              ),
              HomeScreenButton(
                text: 'Zarządzaj wolontariuszami\ni grupami odbiorców',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ManageContactsAndGroupsScreen()),
                  );
                },
              ),
            ],
          ),
        ),
        margin: const EdgeInsets.only(
          left: 16,
          right: 16,
        ),
      ),
    );
  }
}
