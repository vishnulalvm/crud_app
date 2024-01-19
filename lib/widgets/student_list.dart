import 'package:crud_app/db/db_functions/db_functions.dart';
import 'package:crud_app/db/models/data_model.dart';
import 'package:flutter/material.dart';

class StudentList extends StatelessWidget {
  const StudentList({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: studentListsNotifier,
      builder: (BuildContext ctx,List<StudentModel>studentList,Widget? child){
        return ListView.separated(
        itemBuilder: (ctx, index) {
          final data = studentList[index];
          return  ListTile(
            title: Text(data.name),
            subtitle: Text(data.age),
          );
        },
        separatorBuilder: (ctx, index) {
          return const Divider();
        },
        itemCount: studentList.length,
        );
      },
    );
      
      
  }
}
