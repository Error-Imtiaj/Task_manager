import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ConstUtils {
  // * PATH OF IMAGES
  static const String backgroundImagePath = 'assets/images/background.png';
  static const String loginPageSideImagePath = 'assets/images/login_page.png';
  static const String signUpPageSideImagePath =
      'assets/images/Sign_up_page_image.png';

  // * PATH OF ICONS
  static const String confirmPassIconPath = 'assets/icons/c_pass.png';
  static const String passIconPath = 'assets/icons/pass.png';
  static const String emailIconPath = 'assets/icons/email.png';
  static const String firstNameIconPath = 'assets/icons/first_name.png';
  static const String lastNameIconPath = 'assets/icons/last_name.png';
  static const String userIconPath = 'assets/icons/user.png';
  static const String facebookIconPath = 'assets/icons/fb.png';
  static const String googleIconPath = 'assets/icons/google.png';
  static const String twitterIconPath = 'assets/icons/x.png';

  // * COLORS
  Color primaryColor = const Color(0xFFFF6767);
  Color buttonBackgroundColor = const Color(0xffF21E1E);
  Color backgroundWhite = const Color(0xffFFFFFF);
  Color paraTextColor = const Color(0xff747474);
  Color heroBackColor = const Color(0xfff8f8f8);
  Color textFieldBorderColor = Colors.grey;
  Color primaryTextColor = const Color(0xff212427);

  // * ICONS
  Image userNameIcon = Image.asset(userIconPath);
  Image firstNameIcon = Image.asset(firstNameIconPath);
  Image lastNameIcon = Image.asset(lastNameIconPath);
  Image passIcon = Image.asset(passIconPath);
  Image conPassIcon = Image.asset(confirmPassIconPath);
  Image facebookIcon = Image.asset(facebookIconPath);
  Image googleIcon = Image.asset(googleIconPath);
  Image twitterIcon = Image.asset(twitterIconPath);
  Image emailIcon = Image.asset(emailIconPath);

  // * IMAGES
  AssetImage backgroundImage = const AssetImage(backgroundImagePath);
  AssetImage loginPageImage = const AssetImage(loginPageSideImagePath);
  AssetImage signUpPageImage = const AssetImage(signUpPageSideImagePath);

  // * COMMON STYLES
  // * TEXT STYLES
  TextStyle mytextstyle(FontWeight weight, double size, Color textColor) {
    return GoogleFonts.montserrat(
      fontWeight: weight,
      fontSize: size.sp,
      color: textColor,
    );
  }

  // * COMMON WIDGET
  // * TEXTFIELD
  TextField myTextField(String hintText, Image iconimage) {
    return TextField(
      decoration: InputDecoration(
        isDense: true,
        prefixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Container(
            width: 20.w,
            height: 20.w,
            child: iconimage,
          ),
        ),
        hintText: hintText,
        hintStyle: mytextstyle(FontWeight.w500, 34, textFieldBorderColor),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: BorderSide(
            color: textFieldBorderColor,
            width: 1,
            style: BorderStyle.solid,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: BorderSide(
            color: textFieldBorderColor,
            width: 2,
            style: BorderStyle.solid,
          ),
        ),
      ),
    );
  }

  // * ELEVATED BUTTON
  ElevatedButton myButton(
      String text, void Function()? onpressed, Color color) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          elevation: 0,
          minimumSize: Size(250.w, 130.h)),
      onPressed: onpressed,
      child: Text(
        text,
        style: mytextstyle(FontWeight.w600, 30, Colors.white),
      ),
    );
  }

  // * ICON BUTTON
  IconButton myIconButtonForLoginSignUp(
      Image icon, void Function()? onpressed, Color? color) {
    return IconButton(
      style: IconButton.styleFrom(splashFactory: NoSplash.splashFactory),
      color: color,
      onPressed: onpressed,
      icon: SizedBox(
        width: 70.w,
        height: 70.h,
        child: icon,
      ),
      constraints: BoxConstraints(),
      padding: const EdgeInsets.only(left: 20).w,
    );
  }

  // * TEXT BUTTON
  TextButton myTextButton(String text, void Function()? onpressed) {
    return TextButton(
      style: TextButton.styleFrom(splashFactory: NoSplash.splashFactory),
      onPressed: onpressed,
      child: Text(
        text,
        style: mytextstyle(FontWeight.w600, 28, Colors.blue),
      ),
    );
  }
}
