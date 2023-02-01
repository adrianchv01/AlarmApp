import 'package:flutter/material.dart';
import 'package:gitalarm/utils/component_scroll.dart';
import 'package:gitalarm/utils/dialog_box.dart';
import 'package:gitalarm/utils/variables.dart';


class HomePage extends StatefulWidget {
  
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
        final _controller = TextEditingController(); // es para obtener toda la informacion puesta en el formulario
     void saveNewTask(){
    setState(() {
      toDoAlarm.add([_controller.text,false,"semanalmente",2]);
      _controller.clear();
    });
    Navigator.of(context).pop();
  }

 // create new Task
  void createNewTask(){
        showDialog(
          context: context, 
          builder: ((context) {
            return DialogBox(
              controller: _controller,
              onSave: saveNewTask,
              onCancel: () => Navigator.of(context).pop(), // sirve para regresar atras de la aplicacion
            );
          })
          );
      }
   

  @override
  Widget build(BuildContext context) {
    const textHeader = Positioned(
              top: 90,
              left: 30,
              child: Text(     
                'ALARMS',
                style: TextStyle(
                  color: Colors.black,
                  decoration: null,
                  fontSize: 32,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 2.0
                ),
                ),
            );


     

    return Scaffold(
      
        body:Container(
          padding: EdgeInsets.only(left:30.0,right: 30.0,top: 25.0),
          color: Color(0xffFFF173),
          child: ListView(
            
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              // ignore: prefer_const_constructors
              textHeader,
              Container(
                height: 30,
              ),
              CheckAlarms(),
              
             
             
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          elevation: 0.0,
          
          label: const Text('Add Alarm',
          style: TextStyle(
            color: Colors.black
          ),
          ),
          backgroundColor: Colors.white,
          onPressed: createNewTask,
          shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(5),
          side: BorderSide(
          color: Colors.black,
          width: 0.4,
          ),
        ),
    ));
  }
}