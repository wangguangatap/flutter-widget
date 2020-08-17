import 'package:flutter/material.dart';
import 'data/data.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "MYAPP",
      home: Home(),
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}

class Home extends StatelessWidget {
  Widget _itemBuilder(BuildContext context, int index) {
    return Container(
        margin: EdgeInsets.all(12.0),
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Text(posts[index].name, style: Theme.of(context).textTheme.title),
            Text(posts[index].author,
                style: Theme.of(context).textTheme.subhead),
            SizedBox(height: 15.0),
            Image.network(posts[index].url)
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

        ///
        ///
        ///
        /// 在这里设置IconButton
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            tooltip: "显示抽屉",
            onPressed: () {},
          ),
          actions: [
            IconButton(
                icon: Icon(Icons.search), tooltip: "搜索", onPressed: () {}),
            IconButton(
                icon: Icon(Icons.more_horiz), tooltip: "更多", onPressed: () {})
          ],
          title: Text("ATAP"),
          elevation: 0.0,
        ),
        body: ListView.builder(
            itemCount: posts.length, itemBuilder: _itemBuilder));
  }
}
