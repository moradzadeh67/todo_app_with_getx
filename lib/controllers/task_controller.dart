import 'package:get/get.dart';
import 'package:todo_app_with_getx/models/task_model.dart';

class TaskController {
  RxList<TaskModel> tasks = <TaskModel>[].obs;
}
