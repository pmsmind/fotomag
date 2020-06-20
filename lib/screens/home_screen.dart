import 'package:flutter/material.dart';
import 'package:fotomag/screens/shoppingcart_screen.dart';
import 'package:fotomag/screens/preprint_screen.dart';
import 'package:fotomag/widgets/destination_carousel.dart';
import 'package:fotomag/widgets/sale_carousel.dart';
import 'package:fotomag/image_editor_pro/image_editor_pro.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  int _currentTab = 0;


  List<IconData> _icons = [
    FontAwesomeIcons.tshirt,
    FontAwesomeIcons.mugHot,
    FontAwesomeIcons.couch,
    FontAwesomeIcons.image,
  ];

  Widget _buildIcon(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
          if (index != 3) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PreprintScreen(index)),
            );

          }
        });
      },
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
          color: _selectedIndex == index
              ? Theme.of(context).accentColor
              : Color(0xFFE7EBEE),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Icon(
          _icons[index],
          size: 25.0,
          color: _selectedIndex == index
              ? Theme.of(context).primaryColor
              : Color(0xFFB4C1C4), 
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
          
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 0.0),
          children: <Widget>[
            
            /*Padding(
              padding: EdgeInsets.only(left: 20.0, right: 10.0),
              child: new Image(
                  image: new AssetImage("logo.jpg")),
            ),*/

            Padding(
              padding: EdgeInsets.only(left: 0.0, right: 0.0),
              child: Image.asset('assets/images/logo_pro.png',fit: BoxFit.cover,)),
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 120.0),
              child: Text(
                'Выбор услуги',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: _icons
                  .asMap()
                  .entries
                  .map(
                    (MapEntry map) => _buildIcon(map.key),
                  )
                  .toList(),
            ),
            SizedBox(height: 20.0),
            DestinationCarousel(),
            //SizedBox(height: 20.0),
            SaleCarousel(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTab,
        onTap: (int value) {
          print(value);
          if (value == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ShoppingCartScreen()),
            );
            value = 0;
          }
          setState(() {
            _currentTab = value;

          });
        },
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.cyan,
            icon: Icon(

              Icons.search,
              size: 30.0,
            ),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_basket,
              size: 30.0,

            ),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 15.0,
              backgroundImage: NetworkImage('https://lh3.googleusercontent.com/ogw/ADGmqu_3bhrpUbfJO4cmkdEj_z63zWYhOL4LYTyM-Lfh=s64-c-mo'),
            ),
            title: SizedBox.shrink(),
          )
        ],
      ),
    );
  }
}
