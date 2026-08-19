import 'package:flutter/material.dart';

const StyledText extends StatelessWidget{
const StyledText (this.text, {super.key}));
final String text;
@override
Widget build(BuildContext context) {
  return Text(
    text,
    style: textStyle.copyWith(fontSize: 48, color: Color.fromARGB(255, 41, 2, 2)),
  );
}