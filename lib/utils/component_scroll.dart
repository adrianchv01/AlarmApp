import 'package:flutter/material.dart';
import 'package:gitalarm/utils/dialog_box.dart';
import 'package:gitalarm/utils/scroll_box.dart';
import 'package:gitalarm/utils/variables.dart';


class CheckAlarms extends StatefulWidget {
  
  const CheckAlarms({super.key});

  @override
  State<CheckAlarms> createState() => _CheckAlarmsState();

  
}

class _CheckAlarmsState extends State<CheckAlarms> {



  //list of to do alarm
  

  //checkbox on tapped
  void checkboxChanged(bool? value, int index){
    setState(() {
    toDoAlarm[index][1]= !toDoAlarm[index][1];      
    });

  }


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      height: 670,
      // ignore: prefer_const_constructors
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        // ignore: prefer_const_literals_to_create_immutables
        boxShadow: [
          const BoxShadow(
          color: Color.fromARGB(137, 0, 0, 0),
          blurRadius: 4 ,
        ),
        ]
      ),
      child: 
         ListView.builder(
            itemCount: toDoAlarm.length,
            itemBuilder: (context, index) {
              return ScrollBox(
                onChanged: (value) => checkboxChanged(value,index), 
                taskHour: toDoAlarm[index][3], 
                taskName: toDoAlarm[index][0], 
                taskCompleted: toDoAlarm[index][1], 
                taskState: toDoAlarm[index][2]);
            },
            padding: EdgeInsets.only(top: 10),
              
          ),
        );
      
    
  }
  
}