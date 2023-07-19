import 'package:flutter/material.dart';

class LoginTextField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  const LoginTextField({
    required this.hintText, 
    required this.obscureText,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        
        cursorColor: Colors.blue,
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey[350]),
            fillColor: Colors.white,
            filled: true,

            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
              color: Colors.white,
            )),
            focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.shade300, width: 1,))),
        obscureText: obscureText,
      ),
    );
  }
}
