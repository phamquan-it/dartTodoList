import 'dart:io';

import 'package:todolist/Task.dart';
class TodoController{
  void displayAllTask(List<Task> list){
    for(var  a in list){
      stdout.writeln("${a.name} : ${(a.status)?"Completed":"Pending"}");
    }
  }
  List<Task> addTask(List<Task> list,Task task){
    List<Task> newList = list;
    newList.add(task);
    return newList;
  }
  List<Task> markTaskConpleted(List<Task> list,Task task){
    List<Task> newList = list;
    for(var i in newList){
      if(i.id == task.id) i.status = true;
    }
    return newList;
  }
  List<Task> removeTask(List<Task> list,Task task){
    List<Task> newList = list;
    for(int  i =  0; i< newList.length;i++){
      if(list[i].id == task.id) newList.removeAt(i);
    }
    return newList;
  }
  taskStatistics(List<Task> list,Task task){
    for(var i in list){
      if(i.id == task.id) stdout.writeln("${i.id}. ${i.name}");
    }
  }
}