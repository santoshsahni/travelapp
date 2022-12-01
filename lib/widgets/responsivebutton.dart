import 'package:flutter/material.dart';
import 'package:travel/widgets/apptext.dart';

class responsivebtn extends StatelessWidget {
  bool? isresponsive;
  double? width;
  responsivebtn({Key? key, this.width = 120, this.isresponsive = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(5),
        alignment: Alignment.center,
        height: 50,
        width: isresponsive == true ? double.maxFinite : width,
        decoration: BoxDecoration(
            color: Colors.indigoAccent,
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: isresponsive == true
              ? MainAxisAlignment.spaceBetween
              : MainAxisAlignment.center,
          children: <Widget>[
            isresponsive == true
                ? Container(
                    padding: EdgeInsets.only(left: 20),
                    child: apptext(
                      text: "Book Trip now",
                      color: Colors.white,
                      size: 20,
                    ),
                  )
                : Container(),
            Container(
              padding: EdgeInsets.only(right: 20),
              child: Image.asset(
                "assets/images/more icon.png",
                width: 40,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
