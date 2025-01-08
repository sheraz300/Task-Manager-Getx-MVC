import 'package:get/get.dart';
import 'package:task_manager_getx_mvc/models/task_model.dart';

class TaskController extends GetxController {
  final TaskModel taskModel = TaskModel();

  List<Task> get tasks => taskModel.tasks;

  void addTask(String title) {
    taskModel.addTask(title);
  }

  void removeTask(Task task) {
    taskModel.removeTask(task);
  }

  void toggleTaskCompletion(Task task) {
    taskModel.toggleTaskCompletion(task);
  }
}
