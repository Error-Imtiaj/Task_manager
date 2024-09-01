// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:task_manager/Presentation/Const/const_utils.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  ConstUtils myconst = ConstUtils();
  bool _ischecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: myconst.backgroundImage, fit: BoxFit.cover),
              color: myconst.primaryColor),
          child: _body()),
    );
  }

  // * MAIN BODY
  Widget _body() {
    return Container(
      margin: EdgeInsets.all(140.0).w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(width: 0, style: BorderStyle.none),
        color: myconst.backgroundWhite,
      ),
      child: Padding(
        padding: const EdgeInsets.all(100.0).w,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // * LEFT SIDE PORTION
            _leftColumn(),
            Gap(50.w),

            // * RIGHT SIDE PORTION
            _rightImage()
          ],
        ),
      ),
    );
  }

  // * LEFTCOLUMN
  Widget _leftColumn() {
    return Expanded(
      flex: 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gap(50.h),
          Text(
            'Sign In',
            style: myconst.mytextstyle(
                FontWeight.bold, 60, myconst.primaryTextColor),
          ),
          Gap(20.h),
          myconst.myTextField(
            'Enter Username',
            myconst.userNameIcon,
          ),
          Gap(30.h),
          myconst.myTextField(
            'Enter Password',
            myconst.passIcon,
          ),
          Gap(30.h),
          _checkbox(),
          Gap(30.h),
          myconst.myButton('Login', () {}, myconst.buttonBackgroundColor),
          Gap(100.h),
          _loginWith(),
          _dontHaveAccount(),
        ],
      ),
    );
  }

  // * IMAGEAREA
  Widget _rightImage() {
    return Expanded(
      flex: 1,
      child: Container(
        margin: EdgeInsets.only(top: 90).h,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: myconst.loginPageImage, fit: BoxFit.contain)),
      ),
    );
  }

  // * CHECKBOX
  Widget _checkbox() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Checkbox(
            activeColor: myconst.primaryColor,
            value: _ischecked,
            onChanged: (bool? value) {
              setState(() {
                _ischecked = value!;
              });
            }),
        Text(
          'Remember me',
          style: myconst.mytextstyle(FontWeight.w600, 28, Colors.black),
        ),
      ],
    );
  }

  // * LOGIN FB GOOGLE X
  Widget _loginWith() {
    return Row(
      children: [
        Text(
          'Or, Login with ',
          style: myconst.mytextstyle(FontWeight.w600, 28, Colors.black),
        ),
        myconst.myIconButtonForLoginSignUp(myconst.facebookIcon, () {}, null),
        myconst.myIconButtonForLoginSignUp(myconst.googleIcon, () {}, null),
        myconst.myIconButtonForLoginSignUp(myconst.twitterIcon, () {}, null),
      ],
    );
  }

  Widget _dontHaveAccount() {
    return Row(
      children: [
        Text(
          'Don\'t have an account?',
          style: myconst.mytextstyle(FontWeight.w600, 28, Colors.black),
        ),
        myconst.myTextButton('Create One', () {})
      ],
    );
  }
}
