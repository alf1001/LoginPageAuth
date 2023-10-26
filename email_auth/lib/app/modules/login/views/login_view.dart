import 'package:email_auth/app/controllers/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  final emailC = TextEditingController(text: 'alfin@gmail.com');
  final passC = TextEditingController(text: '12345678');
  final authC = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Screen'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            TextField(
              controller: emailC,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: passC,
              decoration: InputDecoration(labelText: 'Password'),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () => authC.login(emailC.text, passC.text),
              child: Text('LOGIN'),
            )
          ],
        ),
      ),
    );
  }
}
