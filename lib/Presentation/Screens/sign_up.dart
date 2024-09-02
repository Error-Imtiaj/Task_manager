import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:task_manager/Presentation/Const/const_utils.dart';
import 'package:task_manager/Presentation/Screens/sign_in.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final ConstUtils myconst = ConstUtils();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: myconst.backgroundImage,
            fit: BoxFit.cover,
          ),
          color: myconst.primaryColor,
        ),
        width: ScreenUtil().screenWidth,
        height: ScreenUtil().screenHeight,
        child: _body(),
      ),
    );
  }

  Widget _body() {
    return Container(
      margin: EdgeInsets.all(140.0).w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(width: 0, style: BorderStyle.none),
        color: myconst.backgroundWhite,
      ),
      child: Padding(
        padding: EdgeInsets.all(100).w,
        child: Row(
          children: [
            //* LEFT SIDE WIDGET
            _leftSide(),

            // * RIGHT SIDE WIDGET
            _rightSide()
          ],
        ),
      ),
    );
  }

  // * LEFT SIDE WIDGET
  Widget _leftSide() {
    return Expanded(
      flex: 1,
      child: Container(
        margin: EdgeInsets.only(top: 90).w,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: myconst.signUpPageImage, fit: BoxFit.contain)),
      ),
    );
  }

  // * RIGHT SIDE WIDGET
  Widget _rightSide() {
    return Expanded(
      flex: 1,
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(right: 50).w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(50.h),
              Text(
                'Sign Up',
                style: myconst.mytextstyle(
                    FontWeight.bold, 70, myconst.primaryTextColor),
              ),
              Gap(20.h),
              myconst.myTextFormField('First Name', myconst.firstNameIcon,
                  firstNameController, null),
              Gap(30.h),
              myconst.myTextFormField(
                  'Last Name', myconst.lastNameIcon, lastNameController, null),
              Gap(30.h),
              myconst.myTextFormField(
                  'Email', myconst.emailIcon, emailController, null),
              Gap(30.h),
              myconst.myTextFormField(
                  'Username', myconst.userNameIcon, userNameController, null),
              Gap(30.h),
              myconst.myTextFormField(
                  'Password', myconst.passIcon, passwordController, true),
              Gap(30.h),
              myconst.myTextFormField('Confirm Password', myconst.conPassIcon,
                  confirmPasswordController, true),
              Gap(30.h),
              _checkbox(),
              Gap(30.h),
              myconst.myButton('Register', () {}, myconst.primaryColor),
              Gap(30.h),
              _haveAccount()
            ],
          ),
        ),
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
            value: _isChecked,
            onChanged: (bool? value) {
              setState(() {
                _isChecked = value!;
              });
            }),
        Text(
          'I agree to all terms',
          style: myconst.mytextstyle(FontWeight.w600, 30, Colors.black),
        ),
      ],
    );
  }

  Widget _haveAccount() {
    return Row(
      children: [
        Text(
          'Already have an account?',
          style: myconst.mytextstyle(FontWeight.w600, 30, Colors.black),
        ),
        myconst.myTextButton('Sign In', () {
          myconst.navigateTo(context, const SignIn());
        })
      ],
    );
  }
}
