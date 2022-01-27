import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            color: Color(0xff10186B),
            image: DecorationImage(
                image: AssetImage('assets/darkBlue.png'), fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                height: 400,
                width: double.infinity,
                // color: Colors.red,
                child: Column(
                  children: [
                    // Text("CHUNK"),
                    Text(
                      'Sign in to continue',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Image(
                      image: AssetImage('assets/logoPink.png'),
                      width: 250,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    SignInButton(
                      Buttons.Apple,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      text: "Sign up with Apple",
                      onPressed: () {},
                    ),
                    SignInButton(
                      Buttons.FacebookNew,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      text: "Sign up with Facebook",
                      onPressed: () {},
                    ),
                    SignInButton(
                      Buttons.Google,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      text: "Sign up with Google",
                      onPressed: () {},
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                        'By signing in you are agreeing to our \nTerms and Privacy Policy.',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Color(0x44FFFFFF)))
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
