import 'package:flutter/material.dart';
import 'package:flutter_application_2/auth/sign_in.dart';
import 'package:flutter_application_2/auth/sign_up.dart';

class onboarding3 extends StatelessWidget {
  const onboarding3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 350,
              width: 500,
              decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage('assets/images/hospital1.jpeg'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(20)),
            ),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.only(left: (10.0)),
              child: Text(
                "Welcome To Save A life Hospital",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: Colors.blue.shade500),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: (10.0)),
              child: Text(
                "This app allows you to book your appoitments before hand inorder for the doctor to know who is coming who and you could also get a customer service if you dont want to see a doctor",
                style: TextStyle(color: Colors.black),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: TextButton(
                    style: TextButton.styleFrom(backgroundColor: Colors.blue),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignUp()));
                    },
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(color: Colors.white),
                    ),
                  )),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: TextButton(
                    style: TextButton.styleFrom(backgroundColor: Colors.blue),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignIn()));
                    },
                    child: const Text(
                      'Sign In',
                      style: TextStyle(color: Colors.white),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
