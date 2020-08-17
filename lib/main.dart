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
      theme: ThemeData(
          primarySwatch: Colors.yellow,

          ///设置高亮颜色，点上去出现的颜色就是高亮颜色
          highlightColor: Color.fromRGBO(255, 255, 255, 0.5),

          ///水波纹的效果
          splashColor: Colors.white70),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    /// Tab主要有三个部分组成
    /// DefaultTabController
    /// TabBar
    /// TabView
    return DefaultTabController(
      length: 3,
      child: Scaffold(
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
            bottom: TabBar(

                ///设置没有选中的Tab的图标的颜色
                unselectedLabelColor: Colors.black38,

                ///设置选中的Tab图标的底边颜色
                indicatorColor: Colors.black54,

                ///设置Tab的底边和Icon一样长，可选项tab，值得是和tab一样长
                indicatorSize: TabBarIndicatorSize.label,

                ///设置底边的高度，粗细
                indicatorWeight: 1.0,
                tabs: <Widget>[
                  Tab(icon: Icon(Icons.local_florist)),
                  Tab(icon: Icon(Icons.change_history)),
                  Tab(icon: Icon(Icons.directions_bike))
                ]),
          ),
          body: TabBarView(
            children: <Widget>[
              Icon(Icons.local_florist, size: 130.0, color: Colors.grey),
              Icon(Icons.change_history, size: 130.0, color: Colors.grey),
              Icon(Icons.directions_bike, size: 130.0, color: Colors.grey),
            ],
          )),
    );
  }
}
