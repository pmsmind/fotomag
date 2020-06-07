import 'package:flutter_fotomag/models/goodslist_model.dart';

class CategoryGoods {
  String guid;
  String imageUrl;
  String typeGoods;
  String description;
  List<GoodsList> goods;

  CategoryGoods({
    this.guid,
    this.imageUrl,
    this.typeGoods,

    this.description,
    this.goods,
  });
}
//tshirt
List<GoodsList> goodList1 = [
  GoodsList(
    guid: 'DwJPQJ0XtUQSStVyX3DI',
    imageUrl: 'assets/images/tshirt1.jpg',
    name: '100% Мужик',
    type: 'Футболка',
    size: ['S', 'M'],
    rating: 5,
    price: 700,
  ),
];
//podushki
List<GoodsList> goodList2 = [
  GoodsList(
    guid: 'fbB0lR7x797NqfpoHpu6',
    imageUrl: 'assets/images/podushka2.jpg',
    name: 'Зимние узоры',
    type: 'Декоративная подушка',
    size: ['S', 'M'],
    rating: 5,
    price: 1200,
  ),
  GoodsList(
    guid: 'Wmg8WSvu13oLoM9PjEyz',
    imageUrl: 'assets/images/podushka1.jpg',
    name: 'Девушка',
    type: 'Декоративная подушка',
    size: ['1',''],
    rating: 4,
    price: 1000,
  ),

];

//maski
List<GoodsList> goodList3 = [
  GoodsList(
    guid: 'xZiUtCHKlQCf5H3r4VuG',
    imageUrl: 'assets/images/mask.jpg',
    name: 'Белая',
    type: 'Хлопковая маска',
    size: ['S', 'M'],
    rating: 5,
    price: 30,
  ),
  GoodsList(
    guid: '6chx3I8jocxAoDVVyplM',
    imageUrl: 'assets/images/mask4.jpg',
    name: 'Черная',
    type: 'Хлопковая маска',
    size: ['XS', 'S'],
    rating: 5,
    price: 30,
  ),
  GoodsList(
    guid: 'QMnGkdZpeN53gGSSFoaM',
    imageUrl: 'assets/images/mask3.jpg',
    name: 'Желтая',
    type: 'Хлопковая маска',
    size: ['S', 'M'],
    rating: 5,
    price: 30,
  ),
];

List<GoodsList> goodList4 = [
  GoodsList(
    guid: 'RQdrbA9YL20avzMPf4wy',
    imageUrl: 'assets/images/kruz2.jpg',
    name: 'Капитан Америка',
    type: 'Кружка',
    size: ['500мл.', '750мл.'],
    rating: 5,
    price: 530,
  ),
  GoodsList(
    guid: 'sjpiMpoG4QJbX3n7oK8l',
    imageUrl: 'assets/images/kruz5.jpg',
    name: 'Эмалированная кружка',
    type: 'Кружка',
    size: ['500мл.', '750мл.'],
    rating: 5,
    price: 530,
  ),
  GoodsList(
    guid: 'mgFL1PkovGFH4XNyBhKF',
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
    guid: '0tQXXjxdaWQDomV4LIKy',
    imageUrl: 'assets/images/pazl.jpg',
    name: 'Любовь это...',
    type: 'Пазл',
    size: ['40x40', '20x20'],
    rating: 5,
    price: 530,
  ),
];

List<CategoryGoods> destinations = [
  CategoryGoods(

    guid: 'm8g1CGy6FVljK6VGOWJG',
    imageUrl: 'assets/images/tshirtlogo.png',
    typeGoods: 'Футболки',
    description: 'Готовые футболки\n',
    goods: goodList1,
  ),
  CategoryGoods(
    guid: 'amOlMND9Cqv27OFzbmdm',
    imageUrl: 'assets/images/pillowlogo.png',
    typeGoods: 'Подушки',
    description: 'Готовые подушки\n',
    goods: goodList2,
  ),
  CategoryGoods(
    guid: 'lDHshlSxIzZKssxt5yzx',
    imageUrl: 'assets/images/people.png',
    typeGoods: 'Маски',
    description: 'Подбери маску под настроение',
    goods: goodList3,
  ),//zapolni spiski
  CategoryGoods(
    guid: 'b9pS9Ivc7I5VjE6njYpq',
    imageUrl: 'assets/images/kruz.jpg',
    typeGoods: 'Кружки',
    description: 'Готовые кружки\n',
    goods: goodList4,
  ),
  CategoryGoods(
    guid: 'ku5weWOqDSXYNWaERQc4',
    imageUrl: 'assets/images/puzzle.png',
    typeGoods: 'Пазл',
    description: 'Интересная головоломка для всей семьи',
    goods: goodList5,
  ),
];//ок 1 минутц

