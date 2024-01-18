import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            const TextField(),
            const SizedBox(
              height: 50,
            ),
            const TextField(
              
            ),

            Row(
              children: [
                ElevatedButton(onPressed: (){}, child: const Text('login'))
              ],
            )
          ],
        ),
      ),
    );
  }
}