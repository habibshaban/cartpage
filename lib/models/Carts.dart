class Cart {
  final int id;
  final String name;
  final double price;
  final String image;
  final int totalnum;

  Cart({
    required this.id,
    required this.name,
    required this.price,
    required this.image,
    required this.totalnum,
  });
}

List<Cart> demoCarts = [];
