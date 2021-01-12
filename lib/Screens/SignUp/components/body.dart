import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Login/components/or_divider.dart';
import 'package:flutter_auth/Screens/Login/login_screen.dart';
import 'package:flutter_auth/Screens/SignUp/components/background.dart';
import 'package:flutter_auth/Screens/SignUp/components/social_icon.dart';
import 'package:flutter_auth/components/already_have_an_acctount_check.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/components/rounded_input_filed.dart';
import 'package:flutter_auth/components/rounded_password_filed.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
          children: <Widget>[
            Text(
              'SIGNUP',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * .03),
            SvgPicture.asset(
              'assets/icons/signup.svg',
              height: size.height * .35,
            ),
            SizedBox(height: size.height * .03),
            RoundedFiled(
              hintText: 'Your Email',
              onChanged: (value) {},
            ),
            RoundedPasswordFiled(
              onChange: (value) {},
            ),
            RoundedButton(
              text: 'SIGNUP',
              press: () {},
            ),
            SizedBox(height: size.height * .03),
            AleadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ),
                );
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Socalcon(
                  iconSrc: 'assets/icons/facebook.svg',
                  press: () {},
                ),
                Socalcon(
                  iconSrc: 'assets/icons/twitter.svg',
                  press: () {},
                ),
                Socalcon(
                  iconSrc: 'assets/icons/google-plus.svg',
                  press: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
