import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonLabel;
  final Widget? nextPage;
  final Color? btnColor;
  var summit;

  CustomButton(
      {required this.buttonLabel,
      this.nextPage,
      this.btnColor,
      this.summit,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: SizedBox(
        height: 50,
        width: MediaQuery.of(context).size.width,
        child: TextButton(
          style: TextButton.styleFrom(backgroundColor: btnColor ?? Colors.blue),
          onPressed: summit ??
              () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => nextPage!)),
          // onPressed: (){
          //   Navigator.push(context, MaterialPageRoute(builder: (context)=>   summit ?? Placeholder()));
          // },
          child: Text(
            buttonLabel,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
