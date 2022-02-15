import 'package:flutter/material.dart';

class HomeScreenButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const HomeScreenButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Padding(
        child: Text(
          text,
          style: const TextStyle(fontSize: 24),
          textAlign: TextAlign.center,
        ),
        padding: const EdgeInsets.only(
          top: 16,
          bottom: 16,
        ),
      ),
    );
  }
}
