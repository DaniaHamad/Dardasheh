import 'package:dardasheh/controllers/login_controller.dart';
import 'package:dardasheh/routes/routes.dart';
import 'package:dardasheh/widgets/button_widget.dart';
import 'package:dardasheh/widgets/facebook_button_widget.dart';
import 'package:dardasheh/widgets/google_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';

class LoginView extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
   LoginView({super.key});
  final controller = Get.put(LoginController());
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
                     EmailBuild(),
                    const SizedBox(height: 32,),
                    PasswordBuild(),
                    const SizedBox(height: 32,),
                    TextButton(onPressed: (){}, child: const Text('Forget your password?'),),
                    const SizedBox(height: 32,),
                    ButtonWidget(text: 'Log in', 
                    onClicked: (){
                      final isValid = formKey.currentState!.validate();

                      if (isValid){
                        
                      }
                    },),
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
                      const Text('Don\'t have an account?'),
                      TextButton(onPressed: (){Get.toNamed(RoutesClass.getSignupRoute());}, child: const Text('Sign up!')),
                     ],),
                  ],
                ),
            ),
          ),
        ),
      ),
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
          return null;
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
          return null;
        },
    );
  
    });}
}

