import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample/pallate.dart';

class PasswordInput extends StatelessWidget {
  const PasswordInput({
    Key? key, 
    required this.icon, 
    required this.hint,  
    required this.textInputAction,
  }) : super(key: key);
  

  final IconData icon;
  final String hint;
  final TextInputAction textInputAction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[600]?.withOpacity(0.5),
          borderRadius:BorderRadius.circular(16),

        ),
        child: TextField(
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 20.0),
            border: InputBorder.none,
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Icon(
                icon,
                color: Colors.white,
                size: 30.0,
              ),
            ),
            hintText: hint,
            hintStyle: kBodyText,
          ),
          obscureText: true,
          style: kBodyText,
          textInputAction: textInputAction,
        ),
      ),
    );
  }
}