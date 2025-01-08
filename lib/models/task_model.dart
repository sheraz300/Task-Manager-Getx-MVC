import 'package:get/get.dart';

class Task {
  String title;
  RxBool isCompleted;

  Task({required this.title, bool? isCompleted})
      : isCompleted = (isCompleted ?? false).obs;
}

class TaskModel {
  RxList<Task> tasks = <Task>[].obs;

  void addTask(String title) {
    tasks.add(Task(title: title));
  }

  void removeTask(Task task) {
    tasks.remove(task);
  }

  void toggleTaskCompletion(Task task) {
    task.isCompleted.value = !task.isCompleted.value;
  }
}
