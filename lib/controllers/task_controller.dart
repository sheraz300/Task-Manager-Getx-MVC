import 'package:get/get.dart';
import 'package:task_manager_getx_mvc/models/task_model.dart';

class TaskController extends GetxController {
  // Instance of the TaskModel
  final TaskModel taskModel = TaskModel();

  // Getter for the list of tasks
  List<Task> get tasks => taskModel.tasks;

  // Method to add a task
  void addTask(String title) {
    taskModel.addTask(title);
  }

  // Method to remove a task
  void removeTask(Task task) {
    taskModel.removeTask(task);
  }

  // Method to toggle task completion
  void toggleTaskCompletion(Task task) {
    taskModel.toggleTaskCompletion(task);
  }
}
