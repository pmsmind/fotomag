import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fotomag/models/goodslist_model.dart';
import 'package:fotomag/models/destination_model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fotomag/models/shoppingcart_model.dart';
import 'package:flutter/animation.dart';

class DestinationScreen extends StatefulWidget {
  final CategoryGoods destination;

  DestinationScreen({this.destination});

  @override
  _DestinationScreenState createState() => _DestinationScreenState();
}

class _DestinationScreenState extends State<DestinationScreen> with SingleTickerProviderStateMixin {
  bool isPlaying = false;

  Animation animation;

  AnimationController controller;
  @override
  void initState() {
    super.initState();

    controller = AnimationController(vsync: this,
        duration: const Duration(milliseconds: 500));
  }

  Text _buildRatingStars(int rating) {
    String stars = '';
    for (int i = 0; i < rating; i++) {
      stars += '⭐ ';
    }
    stars.trim();
    return Text(stars);
  }

  void add(GoodsList activity) {
    var found = false;
    for(var a in purchase) {
      if (activity.name == a.name) {
        print('${activity.name} Найден');
        a.count += 1;
        found = true;
      }
    }
    if (!found) {
      print('${activity.name} добавлен');
      purchase.add(activity);
      purchase[purchase.length - 1].count = 1;
    }
  }


  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // appBar: AppBar(
     //    title: Text('title'),
     //   centerTitle: true,
     // ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            floating: false, pinned: true, snap: false,
            backgroundColor: Colors.cyan,
            expandedHeight: 180.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(widget.destination.typeGoods),
              centerTitle: true,
              background: Container(
                height: 100,
                child: Image.asset(widget.destination.imageUrl, fit: BoxFit.fill),
              )

            ),
            leading: IconButton(
              onPressed: () {Navigator.pop(context);},
              icon: Icon(Icons.arrow_back),
              ),
          ),
          SliverList (
            delegate: SliverChildBuilderDelegate(
              (context, index) => Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(40.0, 5.0, 20.0, 5.0),
                    height: 190.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(100.0, 20.0, 20.0, 20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                width: 120.0,
                                child: Text(
                                  widget.destination.goods[index].name,
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                ),
                              ),
                              Column(
                                children: <Widget>[
                                  Text(
                                    '${widget.destination.goods[index].price}\₽',
                                    style: TextStyle(
                                      fontSize: 22.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  IconButton(
                                    icon: Icon(Icons.add_shopping_cart),
                                    iconSize: 30.0,
                                    color: Colors.black,
                                    onPressed: () {
                                      setState(() {
                                        add(widget.destination.goods[index]);
                                      });
                                    }
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Text(
                            widget.destination.goods[index].type,
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          _buildRatingStars(widget.destination.goods[index].rating),
                          SizedBox(height: 10.0),
                          Row(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(5.0),
                                width: 70.0,
                                decoration: BoxDecoration(
                                  color: Theme.of(context).accentColor,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  widget.destination.goods[index].size[0],
                                ),
                              ),
                              SizedBox(width: 10.0),
                              Container(
                                padding: EdgeInsets.all(5.0),
                                width: 70.0,
                                decoration: BoxDecoration(
                                  color: Theme.of(context).accentColor,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  widget.destination.goods[index].size[1],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 20.0,
                    top: 15.0,
                    bottom: 15.0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image(
                        width: 110.0,
                        image: AssetImage(
                          widget.destination.goods[index].imageUrl,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              childCount: widget.destination.goods.length,
            ),
          ),
        ],
      ),
    );
  }
}
