import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_taxi/controller/auth_controller.dart';
import 'package:green_taxi/views/login_screen.dart';
import '../../widgets/green_intro_widget.dart';
import '../../widgets/my_button.dart';

class DecisionScreen extends StatelessWidget {
  DecisionScreen({Key? key}) : super(key: key);

  final AuthController authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            greenIntroWidget(),
            const SizedBox(
              height: 50,
            ),
            DecisionButton('assets/driver.png', 'Login As Driver', () {
              authController.isLoginAsDriver = true;
              Get.to(() => const LoginScreen());
            }, Get.width * 0.8),
            const SizedBox(
              height: 20,
            ),
            DecisionButton('assets/customer.png', 'Login As User', () {
              authController.isLoginAsDriver = false;
              Get.to(() => const LoginScreen());
            }, Get.width * 0.8),
          ],
        ),
      ),
    );
  }
}
