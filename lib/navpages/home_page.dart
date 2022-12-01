import 'package:flutter/material.dart';
import 'package:travel/widgets/apptext.dart';
import 'package:travel/widgets/largetext.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  List image = ["t1.jpg", "t2.jpg", "p4.jpg"];
  var data = {
    't1.jpg': 'pic 1',
    't2.jpg': 'pic 2',
    'p4.jpg': 'pic 3',
    'p5.jpg': 'pic 4'
  };
  @override
  Widget build(BuildContext context) {
    TabController _tabcontroller = TabController(length: 3, vsync: this);
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 50, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: <Widget>[
                Icon(
                  Icons.menu,
                  size: 35,
                ),
                Expanded(child: Container()),
                Container(
                  margin: EdgeInsets.only(right: 20),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.withOpacity(0.5)),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                margin: EdgeInsets.only(left: 5),
                child: largeText(text: "Discover")), //Discover Text container
            SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: TabBar(
                  controller: _tabcontroller,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  indicatorSize: TabBarIndicatorSize.label,
                  labelPadding: EdgeInsets.only(left: 20, right: 20),
                  indicator: circleTabIndicator(color: Colors.black, radius: 4),
                  //   isScrollable: true,
                  tabs: [
                    Tab(
                      text: "Places",
                    ),
                    Tab(
                      text: "Inspiration",
                    ),
                    Tab(
                      text: "Imotional",
                    ),
                  ]),
            ), //TabBar
            Container(
              height: 290,
              width: double.maxFinite,
              child: TabBarView(
                controller: _tabcontroller,
                children: [
                  ListView.builder(
                      itemCount: 3,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.all(8),
                          height: 290,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image:
                                    AssetImage("assets/images/" + image[index]),
                                fit: BoxFit.cover),
                          ),
                          child: Center(
                            child: largeText(
                              text: "picture ${index + 1}",
                              size: 30,
                            ),
                          ),
                        );
                      }),
                  Text("santosh"),
                  Text("sahni")
                ],
              ),
            ), //TabBar View
            Container(
              margin: EdgeInsets.only(right: 10, left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  largeText(
                    text: "Explore more",
                    size: 23,
                  ),
                  apptext(
                    text: "see all",
                    color: Colors.black87,
                    size: 20,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              height: 80,
              width: double.maxFinite,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(right: 60),
                      child: Column(
                        children: <Widget>[
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                image: DecorationImage(
                                    image: AssetImage("assets/images/" +
                                        data.keys.elementAt(index)),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          apptext(
                            text: data.values.elementAt(index),
                            color: Colors.black87,
                          )
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

class circleTabIndicator extends Decoration {
  final Color color;
  double radius;

  circleTabIndicator({required this.color, required this.radius});

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    // TODO: implement createBoxPainter
    return circlePainter(color: color, radius: radius);
  }
}

class circlePainter extends BoxPainter {
  final Color color;
  double radius;

  circlePainter({required this.color, required this.radius});

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    // TODO: implement paint
    Paint _paint = Paint();
    _paint.color = color;
    _paint.isAntiAlias = true;
    final circleoffset = Offset(configuration.size!.width / 2 - radius / 2,
        configuration.size!.height - radius);
    canvas.drawCircle(offset + circleoffset, radius, _paint);
  }
}
