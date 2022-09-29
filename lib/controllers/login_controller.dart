import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{

  final txtEditControllerEmail = TextEditingController();
  final txtEditControllerPassword = TextEditingController();
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

    super.onInit();
  }
toggleVisibility(){
    isPasswordVisible.value=!isPasswordVisible.value;
  }
}