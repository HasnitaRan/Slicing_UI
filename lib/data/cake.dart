class Cake {
  final int id;
  final String name;
  final String price;
  final String imageUrl;
  final bool isFavorite;
  final String subMenu;

  Cake({
    required this.id,
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.isFavorite,
    required this.subMenu,
  });
}

final List<Cake> listCakes = [
  Cake(
      id: 1,
      name: "Pie Cherry",
      price: "40.000",
      imageUrl: 'assets/images/cake1.jpg',
      isFavorite: true,
      subMenu: 'cake_box'),
  Cake(
      id: 2,
      name: "Pie Cherry",
      price: "40.000",
      imageUrl: 'assets/images/cake2.jpg',
      isFavorite: true,
      subMenu: 'cake_box'),
  Cake(
      id: 3,
      name: "Pie Cherry",
      price: "40.000",
      imageUrl: 'assets/images/cake3.jpg',
      isFavorite: true,
      subMenu: 'cake_box'),
  Cake(
      id: 4,
      name: "Pie Cherry",
      price: "40.000",
      imageUrl: 'assets/images/cake4.jpg',
      isFavorite: true,
      subMenu: 'cake_box'),
  Cake(
      id: 5,
      name: "Pie Cherry",
      price: "40.000",
      imageUrl: 'assets/images/cake3.jpg',
      isFavorite: true,
      subMenu: 'cake_box'),
  Cake(
      id: 6,
      name: "Pie Cherry",
      price: "40.000",
      imageUrl: 'assets/images/cake4.jpg',
      isFavorite: true,
      subMenu: 'cake_box'),
];
