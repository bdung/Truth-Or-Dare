import 'package:flutter/material.dart';
import 'package:truth_or_dare/models/question_models.dart';

class ListItemQuestion extends StatelessWidget {
  const ListItemQuestion({super.key, required this.data});

  final Data? data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("id: ${data?.title.toString()}"),
    );
  }
}
