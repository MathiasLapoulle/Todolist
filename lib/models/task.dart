import 'package:uuid/uuid.dart';

class Task{
  late String content;
  String? id;
  late DateTime createdAt;
  late DateTime? completedAt;
  late DateTime? deadline;

  @override
  String toString(){
    return 'Task(id : $id, content: "$content", status: $status, createdAt: $createdAt, completedAt: $completedAt, deadline: $deadline)'; 
  }


  TaskStatus status;


  Task({
    required this.content,
    String? id, // Optionnel, généré automatiquement s'il n'est pas fourni
    TaskStatus? status, // Optionnel, par défaut à TaskStatus.todo
    DateTime? createdAt, // Optionnel, prend la date actuelle si non fourni
    this.completedAt, //Permet d'accepter la valeur NULL
    this.deadline, //Permet d'accepter la valeur NULL
  })  : id = id ?? Uuid().v4(),
        status = status ?? TaskStatus.todo,
        createdAt = createdAt ?? DateTime.now();
  }

enum TaskStatus {
  todo,
  doing,
  done,
}
