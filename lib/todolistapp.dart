import 'package:flutter/material.dart';
import 'data/static.dart';
import 'models/task.dart';

Color todolistThemeMainColor = Color(0xFF3ABCA7);

class TodolistApp extends StatelessWidget {
  const TodolistApp({super.key});
  @override
  Widget build(BuildContext context) {

     ThemeData todolistTheme = ThemeData(scaffoldBackgroundColor: const Color(0xFF3ABCA7));
     
    print(tasksCollection);
    return MaterialApp(
      theme: todolistTheme,
      home: Scaffold(

        appBar: AppBar( //Ajout du widget AppBar dans le Scaffold
          leading: Image.asset('images/todolist.png'),
          title: Text("Todolist"),
        ),

        body: Center(
          child: Column( //Ajout du widget Column
            children: [ // Ajout de children pour contenir ListView.builder
              Expanded( // Ajout d'Expanded pour éviter l'erreur de hauteur
                child: ListView.builder(
                  itemCount: tasksCollection.length, 
                  itemBuilder: (BuildContext context, int index) {  
                    return Card(
                      child: ListTile(
                        leading: buildIcon(tasksCollection[index].status), //Ajout de l'icone à côté dans la ligne
                        title: Text(tasksCollection[index].content), //Ajout de la ligne en fonction des tasks déjà enregistrées
                      ),
                    ); // Correction : ajout du point-virgule
                  },
                ),
              ),
            ],

          ),
        ),
      ),
    );
  }
}



Icon buildIcon(TaskStatus status){

    switch(status){
      case TaskStatus.doing:
        return Icon(Icons.autorenew, color: Colors.orange);
      case TaskStatus.done:
        return Icon(Icons.check_circle, color: Colors.green);
      case TaskStatus.todo:
        return Icon(Icons.radio_button_unchecked, color: const Color.fromARGB(255, 217, 204, 16));
    }
}