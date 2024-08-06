import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loginsignuppages/Screens/login/login_screen.dart';
import 'package:loginsignuppages/Screens/signup/components/background.dart';
import 'package:loginsignuppages/Screens/signup/components/socialicons.dart';
import 'package:loginsignuppages/constants.dart';

import '../../login/components/alreadyhaveanaccount.dart';
import '../../login/components/textfieldcontainer.dart';
import 'ordivider.dart';

class Body extends StatelessWidget {
  const Body({super.key,});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var horizontalPadding = size.width * 0.33;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const Text(
              "SIGN UP",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: KPrimaryColor,
                  fontFamily: "TIMES NEW ROMAN",
                  fontSize: 22),
            ),
            SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height * 0.30,
            ),
            SizedBox(height: size.height * 0.01),
            const TextFieldContainer(
              child: TextField(
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.person,
                    color: KPrimaryColor,
                  ),
                  hintText: "Your Email",
                  border: InputBorder.none,
                ),
              ),
            ),
            const TextFieldContainer(
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.lock,
                    color: KPrimaryColor,
                  ),
                  suffixIcon: Icon(
                    Icons.visibility,
                    color: KPrimaryColor,
                  ),
                  hintText: "Password",
                  border: InputBorder.none,
                ),
              ),
            ),
            const TextFieldContainer(
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.lock,
                    color: KPrimaryColor,
                  ),
                  suffixIcon: Icon(
                    Icons.visibility,
                    color: KPrimaryColor,
                  ),
                  hintText: "Confirm Password",
                  border: InputBorder.none,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: KPrimaryColor,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: horizontalPadding),
              ),
              child: const Text(
                "SIGN UP",
                style: TextStyle(color: Colors.white),
              ),
            ),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const LoginScreen();
                    },
                  ),
                );
              },
            ),
            const OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocialIcons(
                  iconSrc: "assets/icons/facebook.svg",
                  press: () {},
                ),
                SocialIcons(
                  iconSrc: "assets/icons/google-plus.svg",
                  press: () {},
                ),
                SocialIcons(
                  iconSrc: "assets/icons/twitter.svg",
                  press: () {},
                ),
              ],
            )
            // Changed to PascalCase to follow Dart convention
          ],
        ),
      ),
    );
  }
}
