import 'package:flutter/material.dart';

class ScrollBox extends StatelessWidget {
  final String? taskName;
  final String taskState;
  final int? taskHour;
  final bool taskCompleted;
  Function (bool?)? onChanged;
  ScrollBox({super.key,required this.onChanged,required this.taskHour,required this.taskName, required this.taskCompleted,required this.taskState});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        padding: const EdgeInsets.only(left:21),
        decoration: const BoxDecoration(
          color:Color(0xFFFD9D9D9),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        width: 320,
        height: 100, 
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                
                children: [
                  Text(
                    '$taskName \n $taskHour' ,
                    
                    style: TextStyle(
                      fontSize: 14,
                      decoration: taskCompleted ? TextDecoration.lineThrough : TextDecoration.none
                      
                    ),
                  ),
                  Positioned(
                    child: MaterialButton(
                      onPressed: (){  }
                      ))
                ],
              ),
              Text(
                taskState,
                style: TextStyle(
                  decoration: taskCompleted ? TextDecoration.lineThrough : TextDecoration.none
                ),
              ),
              Checkbox(
                value: taskCompleted, 
                onChanged: onChanged,
                activeColor: Color.fromARGB(255, 0, 0, 0),
                )
            ],
          ),
        ),
      );
    
  }
}