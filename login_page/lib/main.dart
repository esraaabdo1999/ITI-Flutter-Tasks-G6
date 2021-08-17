import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_page/screens/page2.dart';
import 'package:login_page/screens/userScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: UsersScreen(),
    );
  }
}



class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
int _counter = 0;

  void _incrementCounter() {
    setState(() {
      return _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("login page"),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "assets/images/flutter.png",
                width: 150,
                height: 150,
                fit:BoxFit.fill,
            ),
            Padding(padding: EdgeInsets.only(top: 70.0)),
          Container(
            width: 350.0,
            child:const TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Phone Number',
              ),
            ),
          ),
            Padding(padding: EdgeInsets.only(top: 20.0)),
         new Container(
           width: 350.0,
            child:new TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Password',
              ),
            ),
         ),
            Padding(padding: EdgeInsets.only(top: 50.0)),
            ButtonTheme(
              height: 40.0,
              minWidth: 350.0,
              padding:EdgeInsets.symmetric(horizontal: 20.0, vertical: 13.0),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PageTwo(
                      counterFromMain: _counter,
                    )),
                  );
                },
                child: Text("Login",style: TextStyle(color: Colors.white,fontSize:20)),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20.0)),
            Text(
              "Forget password? No yawa. Tap me",
              style: TextStyle(color: Colors.black54,fontSize: 20),
            ),
            Padding(padding: EdgeInsets.only(top: 40.0)),
            ButtonTheme(
              height: 40.0,
              minWidth: 350.0,
              buttonColor: Colors.grey,
              padding:EdgeInsets.symmetric(horizontal: 20.0, vertical: 13.0),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
              child: RaisedButton(
                onPressed: () {},
                child: Text("No Account? Sign Up",style: TextStyle(color: Colors.black,fontSize:20)),
              ),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}

