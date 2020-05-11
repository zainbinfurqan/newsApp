import 'package:flutter/material.dart';
import 'package:newsapp/src/Component/Drawer/Drawer.dart';

class NewsFeed extends StatefulWidget {
  final params;
  NewsFeed({Key key, this.params}) : super(key: key);
  @override
  _NewsFeedState createState() => _NewsFeedState(params);
}

class _NewsFeedState extends State<NewsFeed> {
  var params;
  _NewsFeedState(this.params);
  void initState() {
    super.initState();
    getNewsFeed();
  }

  getNewsFeed() async {
    print("method");
    // var args = ModalRoute.of(context).settings.arguments;
    print(params);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("News"),
      ),
      drawer: DrawerPanel(),
    );
  }
}
