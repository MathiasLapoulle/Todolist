import 'package:flutter/material.dart';
import 'data/static.dart';
import 'models/task.dart';



class TodolistApp extends StatelessWidget {
  const TodolistApp({super.key});

  @override
  Widget build(BuildContext context) {
    print(tasksCollection);
    return MaterialApp(
      home: Scaffold(

        appBar: AppBar( //Ajout du widget AppBar dans le Scaffold
          title: Text("Todolist"),
        ),

        body: const Center(
          child: Column( //Ajout du widget Column

          ListView.builder(itemBuilder: itemBuilder)

          ),
        ),
      ),
    );
  }
}
