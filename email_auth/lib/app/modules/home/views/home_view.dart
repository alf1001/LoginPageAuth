import 'package:email_auth/app/controllers/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final authC = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () => authC.logout(), icon: const Icon(Icons.logout))
        ],
      ),
      body: const Center(
        child: Text(
          'Selamat Anda Sudah Berhasil Login',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
