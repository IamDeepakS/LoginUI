import 'package:flutter/material.dart';
import 'package:messenger_app/constants.dart';

class ForgetPasswordRecovery extends StatelessWidget {
  final Function press;
  const ForgetPasswordRecovery({
    Key key,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: press,
          child: Text(
            "Forget Password",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: kPrimaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
