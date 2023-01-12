import 'package:flutter/material.dart';

class EmoticonFace extends StatelessWidget {
  final String emoticonface;

  EmoticonFace({this.emoticonface});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue[600],
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.all(16),
      child: Center(
        child: Text(
          emoticonface,
          style: TextStyle(
            fontSize: 28,
          ),
        ),
      ),
    );
  }
}
