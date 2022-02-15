import 'package:voloapp/classes/contact.dart';
import 'package:voloapp/classes/receiver.dart';

class ContactsGroup extends Receiver {
  final List<Contact> _contacts = [];

  ContactsGroup({
    required id,
    required name,
  }) : super(
          id: id,
          name: name,
          type: 'group',
        );

  addContact(Contact contact) {
    _contacts.add(contact);
  }

  Contact getContact(int index) {
    return _contacts[index];
  }

  List<Contact> getContacts() {
    return _contacts;
  }
}
