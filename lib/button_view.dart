import 'package:authentication_view/button_style.dart';
import 'package:flutter/material.dart';

class ButtonView extends StatelessWidget {

  ButtonStyle buttonStyle;
  VoidCallback onButtonPressed;

  ButtonView({@required this.onButtonPressed, this.buttonStyle});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: buttonStyle.width,
      height: buttonStyle.height,
      child: FlatButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(buttonStyle.cornerRadius))),
        color: buttonStyle.buttonColor,
        textColor: buttonStyle.textColor,
        onPressed: onButtonPressed,
        child: Text(buttonStyle.buttonText),
      ),
    );
  }
}