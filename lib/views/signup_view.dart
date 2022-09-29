import 'package:dardasheh/routes/routes.dart';
import 'package:dardasheh/widgets/button_widget.dart';
import 'package:dardasheh/widgets/facebook_button_widget.dart';
import 'package:dardasheh/widgets/google_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';

import '../controllers/signup_controller.dart';

class SignupView extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
   SignupView({super.key});
  final controller = Get.put(SignupController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: KeyboardDismisser(
        gestures: const[
          GestureType.onTap,
          GestureType.onVerticalDragDown
        ],
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical:8.0,horizontal: 20),
            child: Form(
              key: formKey,
              child: Column(
                  children:  [
                    Image.asset('assets/logo.png'),
                    UsernameBuild(),
                    const SizedBox(height: 16,),
                    EmailBuild(),
                    const SizedBox(height: 32,),
                    PasswordBuild(),
                    const SizedBox(height: 32,),
                    ButtonWidget(text: 'Sign up', 
                    onClicked: (){
                      final isValid = formKey.currentState!.validate();

                      if (isValid){
                        
                      }
                    },
                    ),
                    const SizedBox(height: 32,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const[
                      Expanded(child: Divider(thickness: 1,endIndent: 10)),
                      Text('OR'),
                      Expanded(child: Divider(thickness: 1,indent: 10)),
                    ],),
                     const SizedBox(height: 32,),
                     FaceBookButton(onClicked: (){}),
                     const SizedBox(height: 32,),
                     GoogleButton(onClicked: (){}),
                     const SizedBox(height: 32,),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      const Text('Already have an account?'),
                      TextButton(onPressed: (){Get.toNamed(RoutesClass.getLoginRoute());}, child: const Text('Log in!')),
                     ],),
                  ],
                ),
            ),
          ),
        ),
      ),
    );
  }
      Widget UsernameBuild() {
    return  TextFormField(
      controller: controller.txtEditControllerUsername,
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.done,
      decoration:  InputDecoration(
        hintText: 'your user name',
        labelText: 'User Name',
        suffixIcon:Obx((() {
          return controller.usernameText.value=="" 
        ? Container(width: 0,)
        :IconButton(onPressed: ()=>controller.txtEditControllerUsername.clear(),icon: const Icon(Icons.close));
      
        })
        ),
        ),
        validator: (value){
          if(value!.length<4){
            return 'Enter at least 4 characters';
          }
          else{return null;}
        },
        maxLength: 32,
    );
  }
    Widget EmailBuild() {
    return  TextFormField(
      controller: controller.txtEditControllerEmail,
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.done,
      decoration:  InputDecoration(
        hintText: 'name@example.com',
        labelText: 'Email',
        suffixIcon:Obx((() {
          return controller.emailText.value=="" 
        ? Container(width: 0,)
        :IconButton(onPressed: ()=>controller.txtEditControllerEmail.clear(),icon: const Icon(Icons.close));
        })
        ),
        ),
        validator: (value){
          const pattern =r'(^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$)';
          final regExp = RegExp(pattern);
          if(!regExp.hasMatch(value!)){
            return 'Enter a valid email';
          }
          else{return null;}
        },
    );
  }
      Widget PasswordBuild() {
    return  Obx((){
return TextFormField(
  controller: controller.txtEditControllerPassword,
      decoration:  InputDecoration(
        hintText: 'Your password',
        labelText: 'Password',

        suffixIcon: controller.passwordText.value=="" 
        ? Container(width: 0,)
        :IconButton(onPressed: (){controller.toggleVisibility();}, icon: 
          controller.isPasswordVisible.value
        ?const Icon(Icons.visibility)
        :const Icon(Icons.visibility_off),
        ),
      ),

      obscureText: !controller.isPasswordVisible.value,

      validator: (value){
          if(value!.length<8){
            return 'Password must be at least 8 characters';
          }
          else{return null;}
        },
    );
  
    });}
}

