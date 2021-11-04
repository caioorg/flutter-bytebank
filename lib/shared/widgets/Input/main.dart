import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  final String label;
  final String hint;
  final Icon icon;
  final TextEditingController controller;
  final TextInputType type;

  Input(this.label, {this.hint, this.icon, this.controller, this.type});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: type,
      decoration: InputDecoration(
        labelText: label,
        icon: icon,
        labelStyle: TextStyle(color: Colors.black45),
        border: OutlineInputBorder(borderSide: BorderSide()),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: new FocusNode().hasFocus
                ? Color(0xFF1692CE)
                : Color(0xFF1692CE),
          ),
        ),
      ),
    );
  }
}
