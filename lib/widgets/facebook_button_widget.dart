import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FaceBookButton extends StatelessWidget {
  const FaceBookButton({
    Key? key,
    required this.onClicked,
  }) : super(key: key);

  final Null Function() onClicked;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(onPressed: onClicked,
    style: ElevatedButton.styleFrom(
      
        shape: const StadiumBorder(),
        backgroundColor: const Color(0xFF1877F2),
        minimumSize: const Size.fromHeight(50),

        
    ),
    icon: const Icon(Icons.facebook_rounded,color: Colors.white,size: 32,), label:  const Center(
      child: Text(
            'Continue with Facebook',
            style:  TextStyle(fontSize: 17,color: Colors.white),
          ),
    ),
      );
  }
}