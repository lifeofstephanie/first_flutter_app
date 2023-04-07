import 'package:flutter/material.dart';
import 'package:flutter_application_2/auth/onboarding/screen3.dart';

class onboarding2 extends StatelessWidget {
  const onboarding2({Key? key}) : super(key: key);

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
                      image: AssetImage('assets/images/hospital2.jpeg'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(20)),
            ),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.only(left: (10.0)),
              child: Text(
                "Welcome To Save A life Hospital App",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: Colors.blue.shade500),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: (10.0)),
              child: Text(
                "To book your appointment you have to be sure you haven't gotten this app by mistake",
                style: TextStyle(color: Colors.black),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: TextButton(
                    style: TextButton.styleFrom(backgroundColor: Colors.blue),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => onboarding3()));
                    },
                    child: const Text(
                      'Next',
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
