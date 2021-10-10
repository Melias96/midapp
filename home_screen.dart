import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);
  static const routeName ='/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.menu),onPressed: (){

        }),
        title: Text('HomeScreen'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search),onPressed: (){

        }),
        ],
      ),
      // ignore: prefer_const_constructors
      body: Center(
        child: RaisedButton(
          child: const Text('Next Screen',
          style: TextStyle(
            color: Colors.white,
          ),
          ),
          color: new Color (0xff622F74),
          onPressed: (){
            Navigator.push(context, 
            MaterialPageRoute(builder: (context)=> SecondScreen()));
          },
        )
      ),
    );
  }
}
class SecondScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("User Info")),
      body: Center(
        child:Text("User Info",textScaleFactor: 2,)
        //Proceed to call user info from teh signup_screen.dart
      ),
    );
  }
}