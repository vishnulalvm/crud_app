import 'package:crud_app/db/models/data_model.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

ValueNotifier<List<StudentModel>>studentListsNotifier =ValueNotifier([]);

Future<void> addStudent(StudentModel value)async{
  
  final studentDB = await Hive.openBox<StudentModel>('student_db');
  await studentDB.add(value);
  studentListsNotifier.value.add(value);
  studentListsNotifier.notifyListeners();
}
Future<void>getAllStudents()async{
  final studentDB = await Hive.openBox<StudentModel>('student_db');
  studentListsNotifier.value.clear();
  studentListsNotifier.value.addAll(studentDB.values);
  studentListsNotifier.notifyListeners();

}

Future<void>deleteStudent(StudentModel data)async{
final studentDB = await Hive.openBox<StudentModel>('student_db');
}