import 'dart:io';

import 'package:todolist/Task.dart';
import 'package:todolist/TodoController.dart';
List<Task> list = [
  Task(1, "di choi",false),
  Task(2, "di ngu",false),
  Task(3, "di an",false),
  Task(4, "di fx",false)
];
void main() {
  TodoController todoController = TodoController();
  int? choose;
  do{
    stdout.writeln("To-do list Manager");
    stdout.writeln("1.Display to-do list");
    stdout.writeln("2.Add new task");
    stdout.writeln("3.Mask task as completed");
    stdout.writeln("4.Remove task");
    stdout.writeln("5. Task statistics");
    stdout.writeln("Input an option:");
    choose = int.parse(stdin.readLineSync()!);
    switch(choose){
      case 1:
        todoController.displayAllTask(list);
        break;
      case 2:
        stdout.writeln("Enter id:");
        int id = int.parse(stdin.readLineSync()!);
        stdout.writeln("Enter task name");
        String? name = stdin.readLineSync();
        Task task = Task(id,name!,false);
        list = todoController.addTask(list, task);
        break;
      case 3:
        stdout.writeln("Enter id:");
        int id = int.parse(stdin.readLineSync()!);
        todoController.markTaskConpleted(list, Task(id, "", true));
        break;
      case 4:
        stdout.writeln("Enter id:");
        int id = int.parse(stdin.readLineSync()!);
         todoController.removeTask(list, Task(id, "", true));
        break;
      case 5:
        stdout.writeln("Enter id:");
        int id = int.parse(stdin.readLineSync()!);
        todoController.taskStatistics(list, Task(id, "", true));
    }
  }while(choose>0);
}
