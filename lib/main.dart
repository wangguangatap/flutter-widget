import 'package:flutter/material.dart';

void main(){
  runApp(Index());
}


class Index extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title:"MYAPP",
      home:Scaffold(
        appBar: AppBar(
          title:Text("这是标题")
        ),
        body:Body()
      )
    );
  }
}



class Body extends StatefulWidget{
  Body(){
    print("body的构造函数--");
  }
  @override
  State<StatefulWidget> createState(){
    print("body的createState--");
    return BodyState();
  }
}



class BodyState extends State<Body>{
  int counter = 0;
  BodyState(){
    print("bodyState的构造函数----");
  }

  void initState(){
    super.initState();
    print("bodyState的initState被调用----");
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print("当依赖被修改时调用----");
  }

  @override
  void didUpdateWidget(Body oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print("当父组件被修改后调用----");
  }

  @override
  Widget build(BuildContext context) {
    print("bodyState的build被调用----");
    // TODO: implement build
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:<Widget> [
            RaisedButton(
              child: Text("点击添加"),
              onPressed: (){
                setState(() {
                  counter++;
                });
              },
            ),
            Text("$counter")
        ],
      ),
    );
  }
}