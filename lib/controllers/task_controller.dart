import 'package:get/get.dart';
import 'package:todo_app_with_getx/models/task_model.dart';

class TaskController {
  RxBool isEditing = false.obs;
  int index = 0;
  RxList<TaskModel> tasks = <TaskModel>[].obs;
}
