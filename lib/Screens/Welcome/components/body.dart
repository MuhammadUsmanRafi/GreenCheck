import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:loginsignuppages/Screens/Welcome/components/background.dart';
import 'package:loginsignuppages/Screens/login/login_screen.dart';
import 'package:loginsignuppages/Screens/signup/signup_screen.dart';
import 'package:loginsignuppages/constants.dart';

class Body extends StatelessWidget {
  const Body({super.key}); // Corrected constructor syntax

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
          "Welcome To GreenCheck",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: KPrimaryColor,
            fontFamily: "TimesNewRoman",
          ),
        ),
        SizedBox(height: size.height * 0.02),
        SvgPicture.asset(
          "assets/icons/chat.svg",
          height: size.height * 0.45,
        ),
        SizedBox(height: size.height * 0.03),
        ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const LoginScreen();
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
            child: const Text("LOGIN", style: TextStyle(color: Colors.white))),
        SizedBox(height: size.height * 0.02),
        ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const SignupScreen();
                  },
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: getKPrimaryLightColor(),
              foregroundColor: Colors.white,
              padding: EdgeInsets.symmetric(
                  vertical: 20.0, horizontal: horizontalPadding),
            ),
            child: const Text("SIGNUP")),
      ],
    ),
        ),
    );
  }
}
