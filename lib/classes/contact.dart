import 'package:voloapp/classes/receiver.dart';

class Contact extends Receiver {
  Contact({
    required id,
    required name,
  }) : super(
          id: id,
          name: name,
          type: 'contact',
        );
}
