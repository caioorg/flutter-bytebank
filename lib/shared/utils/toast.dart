import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

toastAlert(text, {color: Colors.blue}) {
  Fluttertoast.showToast(
    msg: text,
    toastLength: Toast.LENGTH_LONG,
    gravity: ToastGravity.BOTTOM_RIGHT,
    backgroundColor: color,
    textColor: Colors.white,
    fontSize: 16.0,
  );
}
