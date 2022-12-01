import 'package:flutter/material.dart';
import 'package:travel/widgets/appbutton.dart';
import 'package:travel/widgets/apptext.dart';
import 'package:travel/widgets/largetext.dart';
import 'package:travel/widgets/responsivebutton.dart';

class detailpage extends StatefulWidget {
  const detailpage({Key? key}) : super(key: key);

  @override
  State<detailpage> createState() => _detailpageState();
}

class _detailpageState extends State<detailpage> {
  int selectedIndex = -1;
  int gottenstars = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
                left: 0,
                right: 0,
                child: Container(
                  width: double.maxFinite,
                  height: 350,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/t1.jpg"),
                          fit: BoxFit.cover)),
                )),
            Positioned(
              left: 20,
              top: 50,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.menu),
                  )
                ],
              ),
            ),
            Positioned(
                top: 230,
                child: Container(
                  padding: EdgeInsets.only(left: 20, right: 20, top: 30),
                  width: MediaQuery.of(context).size.width,
                  height: 500,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          largeText(
                            text: "Shimla",
                            color: Colors.black.withOpacity(0.8),
                          ),
                          largeText(
                            text: "\$ 250",
                            color: Colors.blue,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.location_on,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text("Shimla, India")
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Wrap(
                            children: List.generate(5, (index) {
                              return Icon(
                                Icons.star,
                                color: index < gottenstars
                                    ? Colors.yellow
                                    : Colors.black,
                              );
                            }),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          apptext(
                            text: "($gottenstars.0)",
                            size: 20,
                            color: Colors.black87,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      largeText(
                        text: "People",
                        size: 25,
                        color: Colors.black87,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      apptext(text: "Number of People in your group"),
                      SizedBox(
                        height: 10,
                      ),
                      Wrap(
                        children: List.generate(5, (index) {
                          return InkWell(
                            onTap: () {
                              setState(() {
                                selectedIndex = index;
                              });
                            },
                            child: appbutton(
                                isicon: false,
                                text: (index + 1).toString(),
                                //icon: Icons.favorite_border,
                                color: selectedIndex == index
                                    ? Colors.white
                                    : Colors.black,
                                backgroundcolor: selectedIndex == index
                                    ? Colors.black
                                    : Colors.grey.withOpacity(0.5),
                                bordercolor: selectedIndex == index
                                    ? Colors.black
                                    : Colors.grey.withOpacity(0.5),
                                size: 45),
                          );
                        }),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      largeText(
                        text: "Description",
                        size: 25,
                        color: Colors.black87,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      apptext(
                        text:
                            "This is a great place to take rest in busy life and enjoy some lovely movements with your partener...",
                        color: Colors.black87,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                )),
            Positioned(
              left: 20,
              right: 20,
              bottom: 20,
              child: Row(
                children: [
                  appbutton(
                      color: Colors.grey,
                      isicon: false,
                      icon: Icons.favorite_border,
                      backgroundcolor: Colors.white,
                      bordercolor: Colors.grey,
                      size: 45),
                  responsivebtn(
                    isresponsive: true,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
