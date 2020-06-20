import 'dart:io';
import 'package:flutter/material.dart';
import 'package:fotomag/image_editor_pro/image_editor_pro.dart';

class PreprintScreen extends StatefulWidget {
  PreprintScreen(this.itemType) : super();
  final int itemType;
  @override
  _PreprintScreenState createState() => _PreprintScreenState();
}

class _PreprintScreenState extends State<PreprintScreen> {

  List<int> _h = [
    240,
    140,
    260
  ];

  List<int> _w = [
    150,
    310,
    190
  ];

  List<String> _itemBackground = [
    'assets/images/bg/tshirt.png',
    'assets/images/bg/cup.png',
    'assets/images/bg/pillow.png',
  ];

  Future<void> getimageditor() {
    final geteditimage =
        Navigator.push(context, MaterialPageRoute(builder: (context) {
      return ImageEditorPro(
        itemType: widget.itemType,
        appBarColor: Colors.cyan,
        bottomBarColor: Colors.cyan,
        widthCanvas: _w[widget.itemType],
        heightCanvas: _h[widget.itemType],
        backroundImage: _itemBackground[widget.itemType]
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
    return Scaffold(
      backgroundColor: Color(0xFFF3F5F7),
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.cyan,
        title: const Text('Создайте свой дизайн'),
        leading: IconButton(icon:Icon(Icons.arrow_back),
          onPressed:() => Navigator.pop(context),
        ),
      ),
      body:
      Stack(
        children: <Widget>[
          Positioned.fill(  //
            child: Image(
            image: AssetImage(_itemBackground[widget.itemType]),
            fit : BoxFit.fill,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.cyan,
        child: Icon(Icons.add),
        onPressed: () {
          getimageditor();
          //setState(() {});
        },
      ),
    );
  }
}
