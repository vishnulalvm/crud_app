import 'package:crud_app/widgets/add_student.dart';
import 'package:crud_app/widgets/student_list.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreens(),
    );
  }
}
class HomeScreens extends StatefulWidget {
  const HomeScreens({super.key});

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('CRUD APP'),
      ),
      floatingActionButton:  AddStudent(),
      body: const SafeArea(child: Column(
        children: [
          Expanded(child: StudentList(),)
        ],
      ))
    );
  }
}
