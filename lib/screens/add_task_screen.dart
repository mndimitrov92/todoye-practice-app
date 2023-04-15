import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  String newTaskTitle = '';
  final Function addTaskCallback;

  AddTaskScreen(this.addTaskCallback);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Add Task",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.lightBlue,
                ),
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (newText) {
                  newTaskTitle = newText;
                },
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.lightBlue,
                child: TextButton(
                  style: TextButton.styleFrom(
                    textStyle: TextStyle(
                      backgroundColor: Colors.lightBlue,
                    ),
                  ),
                  onPressed: () {
                    addTaskCallback(newTaskTitle);
                  },
                  child: Text(
                    "Add",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
