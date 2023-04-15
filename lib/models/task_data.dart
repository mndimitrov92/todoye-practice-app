import 'package:flutter/material.dart';
import 'task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: "Test1"),
    Task(name: "Test2"),
    Task(name: "Test3"),
  ];
}
