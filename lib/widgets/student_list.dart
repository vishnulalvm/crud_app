import 'package:flutter/material.dart';

class StudentList extends StatelessWidget {
  const StudentList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (ctx, index) {
        return  ListTile(
          title: Text('vishnu $index'),
          subtitle: Text('24$index'),
        );
      },
      separatorBuilder: (ctx, index) {
        return const Divider();
      },
      itemCount: 50,
    );
  }
}
