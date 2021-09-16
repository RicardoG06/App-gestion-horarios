import 'package:flutter/material.dart';

class TextFieldCustom extends StatelessWidget {
  final IconData icono;
  final TextInputType type;
  final bool pass;
  final String texto;

  const TextFieldCustom({this.icono, this.type, this.pass = false, this.texto});

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: type,
      obscureText: pass,
      decoration: InputDecoration(
        hintText: texto,
        filled: true,
        fillColor: Color(0xFFD6D6D6),
        prefixIcon: Icon(icono, color: Colors.grey),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFD6D6D6)),
            borderRadius: BorderRadius.circular(20)),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFD6D6D6)),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
