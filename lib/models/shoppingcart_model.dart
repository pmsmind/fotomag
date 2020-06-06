import 'package:flutter_fotomag/models/goodslist_model.dart';
class Cart{
  List<GoodsList> purchased;

  Cart({
    this.purchased
  });
}

List<GoodsList> goods = [
  GoodsList(
    imageUrl: 'assets/images/tshirt1.jpg',
    name: '100% Мужик',
    type: 'Футболка',
    size: ['S', 'M'],
    rating: 5,
    price: 700,
    count: 1,
  ),

];

Cart userCart = Cart(purchased: goods);