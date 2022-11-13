import 'package:app2/util/my_button.dart';
import 'package:flutter/material.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

 DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow,
      content: Container(
          height: 120,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextField(
                  controller: controller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Add a new task",
                  ),
                ),
                //buttons-> save+cancel
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    //save button
                    MyButton(text: "Save", onPressed: onSave),
                    const SizedBox(width: 8),
                    //cancel button
                    MyButton(text: "Cancel", onPressed: onCancel)
                  ],
                )
              ])),
    );
  }
}