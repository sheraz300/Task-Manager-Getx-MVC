import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_manager_getx_mvc/views/Task%20View/task_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Task Manager',
      home: TaskView(),
    );
  }
}
