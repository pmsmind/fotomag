class Sale {
  String imageUrl;
  String name;
  String address;
  int price;

  Sale({
    this.imageUrl,
    this.name,
    this.address,
    this.price,
  });
}

final List<Sale> hotels = [
 /* Hotel(
    imageUrl: 'assets/images/hotel0.jpg',
    name: 'Hotel 0',
    address: '404 Great St',
    price: 175,
  ),*/
  Sale(
    imageUrl: 'assets/images/tshirt2.jpg',
    name: '"Давай навсегда"',
    address: 'Футболка',
    price: 300,
  ),
  /*Hotel(
    imageUrl: 'assets/images/hotel2.jpg',
    name: 'Hotel 2',
    address: '404 Great St',
    price: 240,
  ),*/
];
