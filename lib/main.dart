import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(title: "MYAPP", home: Home());
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("ATAP")),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            /*
            DrawerHeader(
              child: Text("menu".toUpperCase()),
              decoration: BoxDecoration(
                color: Colors.grey[100],
              ),
            ),
            */
            UserAccountsDrawerHeader(
              accountName: Text("wangguangatp"),
              accountEmail: Text("guang64142487@163.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://i1.hdslb.com/bfs/face/0cd621a535d99cc5eed5bd9243355c21d64a0e39.jpg@68w_68h.webp"),
              ),
              decoration: BoxDecoration(
                  color: Colors.yellow[400],
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=3681705955,4153554780&fm=26&gp=0.jpg"),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Colors.yellow[400].withOpacity(0.6),
                          BlendMode.hardLight))),
            ),
            ListTile(
              title: Text(
                'Message',
                textAlign: TextAlign.right,
              ),

              ///在右边显示，leading在左边显示
              trailing: Icon(Icons.message, color: Colors.black12, size: 20.0),
            ),
            ListTile(
              title: Text(
                'Seettings',
                textAlign: TextAlign.right,
              ),

              ///在右边显示，leading在左边显示
              trailing: Icon(Icons.settings, color: Colors.black12, size: 20.0),
            ),
            ListTile(
              title: Text(
                'Favorite',
                textAlign: TextAlign.right,
              ),

              ///在右边显示，leading在左边显示
              trailing: Icon(Icons.favorite, color: Colors.black12, size: 20.0),
            ),
            ListTile(
              title: Text(
                'Search',
                textAlign: TextAlign.right,
              ),

              ///在右边显示，leading在左边显示
              trailing: Icon(Icons.search, color: Colors.black12, size: 20.0),
            )
          ],
        ),
      ),
    );
  }
}
