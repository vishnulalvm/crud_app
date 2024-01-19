import 'package:crud_app/db/db_functions/db_functions.dart';
import 'package:crud_app/db/models/data_model.dart';
import 'package:flutter/material.dart';

class AddStudent extends StatelessWidget {
  AddStudent({super.key});

  final _nameController = TextEditingController();
  final _ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return SizedBox(
                height: 500,
                child: Center(
                  child: ListView(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Close'),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      TextField(
                        controller: _nameController,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(), hintText: 'Name'),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      TextField(
                        controller: _ageController,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(), hintText: 'Age'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          addButtonClicked();
                          Navigator.pop(context);
                        },
                        child: const Text('Add contact'),
                      ),
                    ],
                  ),
                ),
              );
            });
      },
      icon: const Icon(Icons.add),
      label: const Text('New Contacts'),
    );
  }

  Future<void> addButtonClicked() async {
    final name = _nameController.text.trim();
    final age = _ageController.text.trim();
    if (_nameController.text.isNotEmpty) {
      _nameController.clear();
      _ageController.clear();
    }
    final student = StudentModel(name: name, age: age);
    addStudent(student);
  }
}
