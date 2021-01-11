import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Login/components/background.dart';
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'LOGIN',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: size.height * .03),
          SvgPicture.asset(
            'assets/icons/login.svg',
            width: size.height * .35,
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
            press: () {},
            text: 'LOGIN',
          ),
          SizedBox(height: size.height * .03),
          AleadyHaveAnAccountCheck(
            press: () {},
          )
        ],
      ),
    );
  }
}
