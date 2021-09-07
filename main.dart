import 'dart:async';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
List abc=['A','B','C','D'];
List text=['Abc','Bsc','Cdf','Dfg'];

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

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class slpashscreen extends StatefulWidget {
  slpashscreen({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _slpashscreenState createState() => _slpashscreenState();
}

class _slpashscreenState extends State<slpashscreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
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
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                Class()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child:Center(child: Text("first splash screen",textAlign: TextAlign.center,))
    );
  }
}

class Class extends StatefulWidget {
  @override
  _ClassState createState() => _ClassState();
}

class _ClassState extends State<Class> {

  TextEditingController row = TextEditingController();
  TextEditingController column = TextEditingController();
  TextEditingController _controller = TextEditingController();
  TextEditingController _controller1 = TextEditingController();



  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.

    row.dispose();
    column.dispose();
  }

  int rowC = 2;
  int colC = 2;
  int col_charval=2;
  int row_charval=2;
  String generateRandomString(int len) {
    var r = Random();
    const _chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
    return List.generate(len, (index) => _chars[r.nextInt(_chars.length)]).join();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [
            SizedBox(height:20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:[ Container(
                    decoration: BoxDecoration(
                      color:Colors.white,
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(2),
                    ),
                    width:120,
                    child: Center(
                      child: TextField(
                        controller: row,
                        decoration: const InputDecoration(
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          contentPadding:
                          EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                          labelText: 'Enter your row',
                        ),
                        onSubmitted: (value){
                          print(value);
                          rowC = int.parse(row.text);
                        },
                      ),
                    ),
                  ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(

                        decoration: BoxDecoration(
                          color:Colors.white,

                          border: Border.all(
                            color: Colors.black,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(2),
                        ),
                        width: 120,
                        child: Center(
                          child: TextField(
                            controller: column,
                            decoration: const InputDecoration(
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              contentPadding:
                              EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                              labelText: 'Enter your col',
                            ),
                            onSubmitted: (value){
                              print(value);
                              colC = int.parse(column.text);
                            },
                          ),
                        ),
                      ),
                    ),

                  ]),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color:Colors.white,
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(2),
                      ),
                      width: 240,
                      child: Center(
                        child: new TextField(

                          decoration: InputDecoration(
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            labelText: 'Enter your alphabets',
                            contentPadding:
                            EdgeInsets.only(left: 15, bottom:1, top: 10, right: 15),
                          ),
                          controller: _controller,
                          onTap: (){
                            setState(() {
                              row_charval = int.parse(row.text);
                              col_charval = int.parse(column.text);

                            });

                          },
                          maxLengthEnforced: true,
                          keyboardType: TextInputType.number,
                          maxLength:row_charval*col_charval, //9999 upper limit
                        ),
                      ), //Tex

                    ),
                  ), FlatButton(onPressed: (){
                    rowC = int.parse(row.text);
                    colC = int.parse(column.text);
                    setState(() {
                      print(_controller.text.split(''));
                      abc=  _controller.text.split('');
                      print(abc);
                      text.clear();
                      for(int i=0;i<rowC*colC;i++){

                        text.add(generateRandomString(4));
                      }

                    });
                  }, child: Container(
                      height: 60,
                      width: 60,
                      color: Colors.purple,
                      // padding: EdgeInsets.only(),
                      child: Center(child: Text("add ")))),
                ]),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:[
                    Container(
                      decoration: BoxDecoration(
                        color:Colors.white,
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(2),
                      ),
                      width: 240,
                      child: Center(
                        child: new TextField(

                          decoration: InputDecoration(
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            labelText: 'Enter your serching text',
                            contentPadding:
                            EdgeInsets.only(left: 15, bottom:1, top: 10, right: 15),
                          ),
                          controller: _controller1,
                          onTap: (){
                            setState(() {

                            });

                          },
                          maxLengthEnforced: true,
                          //9999 upper limit
                        ),
                      ), //Tex

                    ), FlatButton(onPressed: (){
                      rowC = int.parse(row.text);
                      colC = int.parse(column.text);
                      setState(() {
                        print(_controller.text.split(''));
                        abc=  _controller.text.split('');
                        print(abc);
                      });
                    }, child: Container(
                        height: 60,
                        width: 60,
                        color: Colors.purple,
                        // padding: EdgeInsets.only(),
                        child: Center(child: Text("Search")))),
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 500,
                child: GridView.builder(
                  itemCount: colC * rowC,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: rowC,childAspectRatio: colC*rowC/2 ,crossAxisSpacing: 10,mainAxisSpacing: 10),
                  shrinkWrap: false,
                  itemBuilder: (context, index) => Container(
                    color:_controller1.text==text[index]?Colors.red:Colors.greenAccent,
                    child: Center(child: Column(children:[ Text(abc[index]),
                      Text(text[index])


                    ])),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
