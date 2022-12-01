import 'package:flutter/material.dart';
import 'package:travel/widgets/apptext.dart';
import 'package:travel/widgets/largetext.dart';
import 'package:travel/widgets/responsivebutton.dart';

class welcomepage extends StatefulWidget {
  const welcomepage({Key? key}) : super(key: key);

  @override
  State<welcomepage> createState() => _welcomepageState();
}

class _welcomepageState extends State<welcomepage> {
  List image = ["t1.jpg", "t2.jpg", "p4.jpg"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          itemCount: image.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return Container(
              height: double.maxFinite,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/" + image[index]),
                      fit: BoxFit.cover)),
              child: Container(
                margin: EdgeInsets.only(top: 140, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        largeText(text: "Trip"),
                        apptext(
                          text: "Mountain",
                          color: Colors.red,
                          size: 30,
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Container(
                          width: 300,
                          child: apptext(
                            text:
                                "Holiday Mountain Ski & Fun Park offers convenience and a scenic drive into the mountains, just 90 minutes from New York City. Holiday promises a friendly, relaxed atmosphere that families enjoy. The beginner area and Snow Sports School, as well as special deals like the \"Kinderski Program\" for ages 4-6 and \"family night,\" make learning a pleasurable experience for all ages.",
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 35,
                        ),
                        responsivebtn(
                          isresponsive: false,
                        )
                      ],
                    ),
                    Column(
                      children: List.generate(3, (indexdots) {
                        return Container(
                          margin: EdgeInsets.only(bottom: 3),
                          height: index == indexdots ? 25 : 6,
                          width: 6,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: index == indexdots
                                  ? Colors.orange
                                  : Colors.orange.withOpacity(0.5)),
                        );
                      }),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
