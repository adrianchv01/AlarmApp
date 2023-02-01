import 'package:flutter/material.dart';
import 'package:gitalarm/utils/my_button.dart';


class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Color(0xffFFF173),
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Add a new Alarm"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //Save button
                MyButton(text: 'Save', onPressed: onSave),
                
                const SizedBox(width: 8,),
                //Remove button

                MyButton(text: 'Cancel', onPressed:onCancel)
              ],
            )
          ],
        ),
      ),
    );
  }
}