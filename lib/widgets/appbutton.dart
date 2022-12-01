import 'package:flutter/material.dart';
import 'package:travel/widgets/apptext.dart';

class appbutton extends StatelessWidget {
  String? text;
  IconData? icon;
  final Color color;
  final Color backgroundcolor;
  double size;
  final Color bordercolor;
  bool? isicon;

  appbutton(
      {Key? key,
      this.isicon = false,
      this.text = "Hi",
      this.icon,
      required this.color,
      required this.backgroundcolor,
      required this.bordercolor,
      required this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 15),
        height: size,
        width: size,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            color: backgroundcolor,
            borderRadius: BorderRadius.circular(15)),
        child: isicon == false
            ? Center(
                child: apptext(
                  text: text!,
                  color: color,
                ),
              )
            : Center(
                child: Icon(
                  icon,
                  color: color,
                  size: 30,
                ),
              ));
  }
}
