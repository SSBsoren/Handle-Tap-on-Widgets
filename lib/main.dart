import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
        // counter didn't reset back to zero; the application is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: new MyPage(),
    );
  }
}

class MyPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(appBar: AppBar(title:Text('Hellow saGen')), body: Center(child: CreatButton()),);
  }
}

class CreatButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Create row with widgets child item
    return Row(mainAxisAlignment:  MainAxisAlignment.center,
    children: <Widget>[
      
      //Button
      Padding(padding: const EdgeInsets.all(8.0),
        child:
        RaisedButton(onPressed: (){

          Fluttertoast.showToast(msg:'Click event fired !',
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          bgcolor: '#333639',
          textcolor: '#fffffff');
          //Handling
        },child: Text('On Click'), )
        ,),

      //Button Custom
      Padding(padding: const EdgeInsets.all(8.0),
        child:
       GestureDetector(
         onTap: (){

           Fluttertoast.showToast(msg:' Single Tap Fired !',
               toastLength: Toast.LENGTH_SHORT,
               gravity: ToastGravity.BOTTOM,
               bgcolor: '#000000',
               textcolor: '#fffffff');

         },
         onDoubleTap: (){
           Fluttertoast.showToast(msg:'Double Tap Fired !',
               toastLength: Toast.LENGTH_SHORT,
               gravity: ToastGravity.BOTTOM,
               bgcolor: '#C51162',
               textcolor: '#fffffff');
         },
         child: Container(padding: const EdgeInsets.all(12.0), decoration: BoxDecoration(
           color: Theme.of(context).buttonColor,
           borderRadius: BorderRadius.circular(4.0)
         ),
         child: Text("Tap here"),
         ),
       )
        ,)



    ],);
   
  }
}
