import 'package:flutter/material.dart';
import 'package:yoga_app/login.dart';

enum Gender { Male, Female }

class myRadio extends StatelessWidget {
  myRadio({
    Key? key,
    required this.title,
    required this.value,
    required this.gender,
    required this.onChanged,
  });

  String title;
  Gender value;
  Gender? gender;
  Function(Gender?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RadioListTile<Gender>(
          contentPadding: EdgeInsets.all(0.0),
          value: value,
          groupValue: gender,
          dense: true,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
          tileColor: Color(0xFFD9D9D9),
          title: Text(title),
          onChanged: onChanged),
    );
  }
}
