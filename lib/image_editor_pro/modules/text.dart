import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TextEditor extends StatefulWidget {
  @override
  _TextEditorState createState() => _TextEditorState();
}

class _TextEditorState extends State<TextEditor> {
  TextEditingController name = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
        backgroundColor: Colors.white30,
        actions: <Widget>[
          new IconButton(
              icon: Icon(FontAwesomeIcons.alignLeft), onPressed: () {}),
          new IconButton(
              icon: Icon(FontAwesomeIcons.alignCenter), onPressed: () {}),
          new IconButton(
              icon: Icon(FontAwesomeIcons.alignRight), onPressed: () {}),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: name,
                decoration: InputDecoration(
                  hintText: 'Введите текст',
                  hintStyle: TextStyle(color: Colors.grey),
                  alignLabelWithHint: true,
                ),
                scrollPadding: EdgeInsets.all(20.0),
                keyboardType: TextInputType.multiline,
                maxLines: 999,
                style: TextStyle(
                  color: Colors.blueAccent,
                ),
                autofocus: true,
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: new Container(
        color: Colors.white,
        padding: EdgeInsets.all(10),
        child: new FlatButton(
            onPressed: () {
              Navigator.pop(context, name.text);
            },
            color: Colors.black,
            padding: EdgeInsets.all(15),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: new Text(
              "Add Text",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.white),
            )),
      ),
    );
  }
}
