import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loginsignuppages/Screens/HomePage/homepage.dart';
import 'package:loginsignuppages/Screens/login/components/background.dart';
import 'package:loginsignuppages/Screens/login/components/textfieldcontainer.dart';
import 'package:loginsignuppages/Screens/signup/signup_screen.dart';

import '../../../constants.dart';
import 'alreadyhaveanaccount.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var horizontalPadding = size.width * 0.33;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "LOGIN",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: KPrimaryColor,
                fontFamily: "TimesNewRoman",
              ),
            ),
            SizedBox(height: size.height * 0.02),
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.35,
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
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const HomePage();
                      },
                    ),
                  );
                },
              style: ElevatedButton.styleFrom(
                backgroundColor: KPrimaryColor,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: horizontalPadding),
              ),
              child: const Text(
                "LOGIN",
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: size.height * 0.01),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const SignupScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
