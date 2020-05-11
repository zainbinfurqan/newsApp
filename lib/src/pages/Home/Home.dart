import 'package:flutter/material.dart';
import 'package:newsapp/src/pages/News/News.dart';
import 'package:newsapp/src/services/api-servecies.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List categories = [
    // {
    //   "name": "News",
    //   "icon":
    //       "https://res.cloudinary.com/zainahmed/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1589060111/fashionnews_logo_p1jszy.png"
    // },
    {
      "name": "IT Industury",
      "icon":
          "https://res.cloudinary.com/zainahmed/image/upload/v1589060123/unnamed_1_cdlmnk.png"
    },
    {
      "name": "Sports",
      "icon":
          "https://res.cloudinary.com/zainahmed/image/upload/v1589060308/ktu_sports_qu8hrp.png"
    },
    {
      "name": "International",
      "icon":
          "https://res.cloudinary.com/zainahmed/image/upload/v1589060133/1200px-Global_News.svg_hzq0im.png"
    },
    {
      "name": "Education",
      "icon":
          "https://res.cloudinary.com/zainahmed/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1589060111/fashionnews_logo_p1jszy.png"
    },
    {
      "name": "Fashion",
      "icon":
          "https://res.cloudinary.com/zainahmed/image/upload/v1589060111/fashionnews_logo_p1jszy.png"
    },
    {
      "name": "National",
      "icon":
          "https://res.cloudinary.com/zainahmed/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1589060111/fashionnews_logo_p1jszy.png"
    },
    {
      "name": "Games",
      "icon":
          "https://res.cloudinary.com/zainahmed/image/upload/v1589062130/gamehub-icon_wyq9ae.png"
    },
  ];

  void getCategory() async {
    var categories_ = await getDataWithOutParam('localhost:3000/category');
    setState(() {
      categories = categories_;
    });
  }

  void navigate() {
    // Navigator.pushNamed(context, '/newsfeed', arguments: {"catId": 1});
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => NewsFeed(params: {"catId": 1})));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: Column(
        children: <Widget>[
          Container(
              // decoration: BoxDecoration(border: Border.all(width: 5)),
              height: MediaQuery.of(context).size.height * .13,
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    child: Transform.rotate(
                        angle: 0.1,
                        child: Image.network(
                          "https://res.cloudinary.com/zainahmed/image/upload/v1589063812/c0f8ba185db581d6f312d860f8004257_vtwojc.png",
                          height: 50,
                        )),
                  ),
                  Center(
                    child: Transform.rotate(
                        angle: 0.1,
                        child: Text(
                          "News Feed",
                          style: TextStyle(fontSize: 15),
                        )),
                  )
                ],
              )),
          Container(
              height: MediaQuery.of(context).size.height * .75,
              child: GridView.count(
                crossAxisCount: 2,
                children: List.generate(categories.length, (index) {
                  var data_ = categories[index];
                  print(data_);
                  return InkWell(
                    onTap: () {
                      navigate();
                    },
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 35,
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              border: Border.all(width: 0.5),
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text(
                              data_['name'],
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        ),
                        Container(
                          height: 120,
                          // decoration:
                          // BoxDecoration(border: Border.all(width: 5)),
                          child: Center(
                            child: Image.network(
                              data_['icon'],
                              height: 70,
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                }),
              ))
        ],
      ),
    );
  }
}
