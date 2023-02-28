import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_taxi/utils/app_colors.dart';
import 'package:green_taxi/widgets/green_intro_widget.dart';
import 'package:green_taxi/widgets/otp_verfication_widget.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({super.key});

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              greenIntroWidget(),
              Positioned(
                top: 60,
                left: 30,
                child: InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Icon(Icons.arrow_back,
                        color: AppColors.greenColor, size: 20),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          otpVerficationWidget(),
        ],
      ),
    ));
  }
}
// start on 4th video