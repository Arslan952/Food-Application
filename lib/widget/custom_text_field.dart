import 'package:flutter/material.dart';
class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final IconData data;
  final String hintText;
  bool isObsecre=true;
  bool enabled=true;
  CustomTextField(
      this.controller, this.data, this.hintText, this.isObsecre, this.enabled);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(

        borderRadius: BorderRadius.all(Radius.circular(10))
      ),
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.all(10),
      child: TextFormField(
        enabled: enabled,
        controller: controller,
        obscureText: isObsecre,
        cursorColor: const Color(0xffff4500),

        decoration: InputDecoration(
          labelText: hintText,
          labelStyle: TextStyle(color: Color(0xffff4500)),
          prefixIcon:Icon(
            data,
            color: const Color(0xffff4500),

          ),
          focusColor: Colors.orange,
          hintStyle: const TextStyle(color: Color(0xffff4500)),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xffff4500), width: 2.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black26, width: 2.0),
          ),
        ),

      ),
    );
  }
}
