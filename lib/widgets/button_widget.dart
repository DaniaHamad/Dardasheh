import 'package:flutter/material.dart';


class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
    required this.onClicked,
    required this.text,
  }) : super(key: key);

  final Null Function() onClicked;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onClicked,
    style: ElevatedButton.styleFrom(
      
        shape: const StadiumBorder(),
        minimumSize: const Size.fromHeight(50),

        
    ),
    child: Text(
          text,
          style: const TextStyle(fontSize: 17,),
        ),
      );
  }
}