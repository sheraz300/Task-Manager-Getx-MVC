import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_manager_getx_mvc/controllers/task_controller.dart';

class TaskView extends StatelessWidget {
  const TaskView({super.key});

  @override
  Widget build(BuildContext context) {

    final TaskController controller = Get.put(TaskController());

    return Scaffold(
      appBar: AppBar(title: Text('Task Manager')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              onSubmitted: (value) {
                if (value.isNotEmpty) {
                  controller.addTask(value);
                }
              },
              decoration: InputDecoration(
                labelText: 'Enter task',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Obx(() {
                return ListView.builder(
                  itemCount: controller.tasks.length,
                  itemBuilder: (context, index) {
                    final task = controller.tasks[index];
                    return ListTile(
                      title: Text(
                        task.title,
                        style: TextStyle(
                          decoration: task.isCompleted.value
                              ? TextDecoration.lineThrough
                              : null,
                        ),
                      ),
                      trailing: IconButton(
                        icon: Icon(Icons.check),
                        onPressed: () {
                          controller.toggleTaskCompletion(task);
                        },
                      ),
                      onLongPress: () {
                        controller.removeTask(task);
                      },
                    );
                  },
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
