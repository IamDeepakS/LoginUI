import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:messenger_app/views/signin/components/background.dart';
import 'package:messenger_app/views/signup/sign_up.dart';
import 'package:messenger_app/widgets/already_have_an_account.dart';
import 'package:messenger_app/widgets/forget_password_recovery.dart';
import 'package:messenger_app/widgets/rounded_button.dart';
import 'package:messenger_app/widgets/rounded_input_field.dart';
import 'package:messenger_app/widgets/rounded_password_field.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccount(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUp();
                    },
                  ),
                );
              },
            ),
            SizedBox(height: size.height * 0.02),
            ForgetPasswordRecovery(
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}
