import 'package:flutter/material.dart';
import 'package:flutter_auth/components/text_filed_container.dart';
import 'package:flutter_auth/constants.dart';

class RoundedPasswordFiled extends StatelessWidget {
  final ValueChanged<String> onChange;
  const RoundedPasswordFiled({
    Key key,
    this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFiledContainer(
      child: TextField(
        onChanged: onChange,
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'password',
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: kPrimaryColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
