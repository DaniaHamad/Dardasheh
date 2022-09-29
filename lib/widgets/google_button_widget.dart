

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({
    Key? key,
    required this.onClicked,
  }) : super(key: key);

  final Null Function() onClicked;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(onPressed: onClicked,
    style: OutlinedButton.styleFrom(
       side:  const BorderSide(width: 2.0,color: Color(0xFF939393)),
        shape: const StadiumBorder(),
        backgroundColor:  Colors.white,
        minimumSize: const Size.fromHeight(50),

        
    ),
    icon: SizedBox(height: 30,child: SvgPicture.asset('assets/google.svg'),),
    
    label: const Center(
      child:  Text(
            'Continue with Google         ',
            style:  TextStyle(fontSize: 17,color: Colors.black),
          ),
    ),
      );
  }
}