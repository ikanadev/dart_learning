class Product {
  // static variable
  static const tax = 3;
  // class variables
  String name = '';
  int price = 0;

  // initializing formal parameters
  Product(this.name, this.price);

  // static method
  static void printTax() {
    print('Tax: $tax');
  }

  // getter
  int get finalPrice => price + ((tax * price) / 100).round(); // price with tax
  // setter
  set finalPrice(int value) =>
      price = ((value * 100) / (tax + 100)).round(); // set price including tax

  // regular method
  String asStr() {
    return '$name: ${(price / 100).round()}.${price % 100}';
  }

  // add operators to class, two products are equals if they have same name and same price
  @override
  bool operator ==(Object other) =>
      other is Product && name == other.name && price == other.price;
  @override
  int get hashCode => Object.hash(name, price);
}

enum FoodType { organic, inorganic }

class Food extends Product {
  DateTime expiration = DateTime.now();
  FoodType foodType = FoodType.inorganic;

  Food(super.name, super.price, this.expiration, this.foodType);

  Food.upperName(String name, int price, DateTime exp)
      : super(name.toUpperCase(), price) {
    expiration = exp;
    foodType = FoodType.organic;
  }
}

class Tool extends Product {
  String brand = '';

  Tool(super.name, super.price, String brand) {
    this.brand = brand.toUpperCase();
  }
}
