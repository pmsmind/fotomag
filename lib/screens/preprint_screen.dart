import 'dart:io';
import 'package:flutter/material.dart';
import 'package:fotomag/image_editor_pro/image_editor_pro.dart';

class PreprintScreen extends StatefulWidget {
  @override
  _PreprintScreenState createState() => _PreprintScreenState();
}

class _PreprintScreenState extends State<PreprintScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<void> getimageditor() {
    final geteditimage =
        Navigator.push(context, MaterialPageRoute(builder: (context) {
      return ImageEditorPro(
        appBarColor: Colors.cyan,
        bottomBarColor: Colors.cyan,
        widthCanvas: 150,
        heightCanvas: 200,
        itemType: 1
      );
    })).then((geteditimage) {
      if (geteditimage != null) {
        setState(() {
          _image = geteditimage;
        });
      }
    }).catchError((er) {
      print(er);
    });
  }

  File _image;
  int _itemType;
  @override
  Widget build(BuildContext context) {
    final int _itemType = ModalRoute.of(context).settings.arguments;
    //setState(() {});
    return Scaffold(
      backgroundColor: Color(0xFFF3F5F7),
      appBar: AppBar(
        title: const Text('Создайте свою футбоку'),
      ),
      body:
      Stack(
        children: <Widget>[
          Positioned.fill(  //
            child: Image(
            image: AssetImage(itemBackground[0]),
            fit : BoxFit.fill,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          getimageditor();
          //setState(() {});
        },
      ),
    );
  }
}
