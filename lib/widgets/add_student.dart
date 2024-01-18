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
                            border:
                                OutlineInputBorder(),
                                hintText: 'Name'),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                       TextField(
                         controller: _ageController,
                        decoration: const InputDecoration(
                            border:
                                OutlineInputBorder(),
                                hintText: 'Age'),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Add contact'),
                      ),
                    ],
                  ),
                ),
              );
            });
      },
      icon: const Icon(Icons.add),
      label: const Text('Add Contact'),
    );
  }
  Future<void>addButtonClicked()async{
    final name =_nameController.text.trim();
    final age = _ageController.text.trim();
    if(name.isEmpty ||age.isEmpty){
      return;
    }
    
  }
}
