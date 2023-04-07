import 'package:flutter/material.dart';

class ReUseableWidget1 extends StatelessWidget {
  final String imgPath;
  final String title;
  final String subTitle;
  final String buttonLabel;
  final Widget nextPage;

  const ReUseableWidget1(
      {required this.imgPath,
      required this.title,
      required this.subTitle,
      required this.buttonLabel,
      required this.nextPage,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 400,
          width: 500,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imgPath),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(20)),
        ),
        const SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Text(
            title,
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
                color: Colors.blue.shade500),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: Text(
            subTitle,
            style: TextStyle(color: Colors.black),
          ),
        ),
        const SizedBox(
          height: 120,
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
                    context, MaterialPageRoute(builder: (context) => nextPage));
              },
              child: Text(
                buttonLabel,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        )
      ],
    );
  }
}
