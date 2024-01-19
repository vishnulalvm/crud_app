import 'package:crud_app/db/models/data_model.dart';
import 'package:flutter/material.dart';

ValueNotifier<List<StudentModel>>studentListsNotifier =ValueNotifier([]);

void addStudent(StudentModel value){
  studentListsNotifier.value.add(value);
  studentListsNotifier.notifyListeners();
}