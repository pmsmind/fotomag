import 'package:flutter_travel_ui/models/goodslist_model.dart';

class Destination {
  String imageUrl;
  String typeGoods;
  String goods;
  String description;
  List<GoodsList> activities;

  Destination({
    this.imageUrl,
    this.typeGoods,
    this.goods,
    this.description,
    this.activities,
  });
}
//tshirt
List<GoodsList> goodList1 = [
  GoodsList(
    imageUrl: 'assets/images/tshirt1.jpg',
    name: '100% Мужик',
    type: 'Футболка',
    size: ['S', 'M'],
    rating: 5,
    price: 700,
  ),
  /*GoodsList(
    imageUrl: 'assets/images/podushka1.jpg',
    name: 'Девушка',
    type: 'Декоративная подушка',
    size: ['1',''],
    rating: 4,
    price: 200,
  ),
  GoodsList(
    imageUrl: 'assets/images/mask3.jpg',
    name: 'Murano and Burano Tour',
    type: 'Sightseeing Tour',
    size: ['12:30 pm', '2:00 pm'],
    rating: 3,
    price: 125,
  ),*/
];
//podushki
List<GoodsList> goodList2 = [
  GoodsList(
    imageUrl: 'assets/images/podushka2.jpg',
    name: 'Зимние узоры',
    type: 'Декоративная подушка',
    size: ['S', 'M'],
    rating: 5,
    price: 1200,
  ),
  GoodsList(
    imageUrl: 'assets/images/podushka1.jpg',
    name: 'Девушка',
    type: 'Декоративная подушка',
    size: ['1',''],
    rating: 4,
    price: 1000,
  ),
  /*GoodsList(
    imageUrl: 'assets/images/mask3.jpg',
    name: 'Murano and Burano Tour',
    type: 'Sightseeing Tour',
    size: ['12:30 pm', '2:00 pm'],
    rating: 3,
    price: 125,
  ),*/
];

//maski
List<GoodsList> goodList3 = [
  GoodsList(
    imageUrl: 'assets/images/mask.jpg',
    name: 'Белая',
    type: 'Хлопковая маска',
    size: ['S', 'M'],
    rating: 5,
    price: 30,
  ),
  GoodsList(
    imageUrl: 'assets/images/mask4.jpg',
    name: 'Черная',
    type: 'Хлопковая маска',
    size: ['XS', 'S'],
    rating: 5,
    price: 30,
  ),
  GoodsList(
    imageUrl: 'assets/images/mask3.jpg',
    name: 'Красная',
    type: 'Хлопковая маска',
    size: ['S', 'M'],
    rating: 5,
    price: 30,
  ),

];
List<GoodsList> goodList4 = [
  GoodsList(
    imageUrl: 'assets/images/kruz2.jpg',
    name: 'Капитан Америка',
    type: 'Кружка',
    size: ['500мл.', '750мл.'],
    rating: 5,
    price: 530,
  ),
  GoodsList(
    imageUrl: 'assets/images/kruz5.jpg',
    name: 'Эмалированная кружка',
    type: 'Кружка',
    size: ['500мл.', '750мл.'],
    rating: 5,
    price: 530,
  ),
  GoodsList(
    imageUrl: 'assets/images/kruz4.jpg',
    name: 'Лисенок',
    type: 'Кружка',
    size: ['300мл.', '500мл.'],
    rating: 5,
    price: 500,
  ),

];
List<GoodsList> goodList5 = [
GoodsList(
imageUrl: 'assets/images/pazl.jpg',
name: 'Любовь это...',
type: 'Паззл',
size: ['', ''],
rating: 5,
price: 530,
),];
List<Destination> destinations = [
  Destination(

    // zameni city country это понятно, хочу сначала посмотреть где их видно кантри вообще можно убрать
    imageUrl: 'assets/images/tshirtlogo.png',//Заменить, выглядит ужасно!!!
    typeGoods: 'Футболки',
    goods: 'Футболки',
    description: 'Готовые футболки\n',
    activities: goodList1,
  ),
  Destination(
    imageUrl: 'assets/images/pillowlogo.png',
    typeGoods: 'Подушки',
    goods: 'Подушки',
    description: 'Готовые подушки\n',
    activities: goodList2,
  ),
  Destination(
    imageUrl: 'assets/images/people.png',
    typeGoods: 'Маски',
    goods: 'Маски',
    description: 'Подбери маску под настроение',
    activities: goodList3,
  ),//zapolni spiski
  Destination(
    imageUrl: 'assets/images/kruz.jpg',
    typeGoods: 'Кружки',
    goods: 'Кружки',
    description: 'Готовые кружки\n',
    activities: goodList4,
  ),
  Destination(
    imageUrl: 'assets/images/puzzle.png',
    typeGoods: 'Паззл',
    goods: 'Паззл',
    description: 'Интересная головоломка для всей семьи',
    activities: goodList5,
  ),
];//ок 1 минутц

