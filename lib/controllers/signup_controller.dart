import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  final txtEditControllerUsername = TextEditingController();
  final txtEditControllerEmail = TextEditingController();
  final txtEditControllerPassword = TextEditingController();
  RxString usernameText = ''.obs;
  RxString emailText = ''.obs;
  RxString passwordText = ''.obs;
  RxBool isPasswordVisible = false.obs;
  @override
  void onInit() {
    txtEditControllerEmail.addListener(() {
      emailText.value = txtEditControllerEmail.text;
    });
    txtEditControllerPassword.addListener(() {
      passwordText.value = txtEditControllerPassword.text;
    });
    txtEditControllerUsername.addListener(() {
      usernameText.value = txtEditControllerUsername.text;
    });
    super.onInit();
  }
@override
  void dispose() {
    txtEditControllerEmail.dispose();
    txtEditControllerPassword.dispose();
    txtEditControllerUsername.dispose();
    
    //super.dispose();
  }
  toggleVisibility() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }
}
