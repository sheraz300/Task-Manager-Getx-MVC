import 'package:get/get.dart';

class Task {
  String title;
  RxBool isCompleted;

  Task({required this.title, bool? isCompleted})
      : isCompleted = (isCompleted ?? false).obs;
}

class TaskModel {
  // A list of tasks
  RxList<Task> tasks = <Task>[].obs;

  // Method to add a new task
  void addTask(String title) {
    tasks.add(Task(title: title));
  }

  // Method to remove a task
  void removeTask(Task task) {
    tasks.remove(task);
  }

  // Method to toggle task completion
  void toggleTaskCompletion(Task task) {
    task.isCompleted.value = !task.isCompleted.value;
  }
}
