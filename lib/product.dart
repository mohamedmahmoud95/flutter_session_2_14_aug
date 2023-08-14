
class Product{
  String? name;
  double? rating;
  double? price;
  String? imageUrl;

  Product({
    this.name,
    this.imageUrl,
    this.price,
    this.rating
});

}

Product bag1 = Product(name: "awesome bag 1", price: 1000, rating: 4.5, imageUrl: "images/bagImage.jpg");
Product bag2 = Product(name: "awesome bag 2", price: 2000, rating: 4.5, imageUrl: "images/bagImage2.jpg");
Product bag3 = Product(name: "awesome bag 3", price: 3000, rating: 4.5, imageUrl: "images/bagImage3.jpg");
Product bag4 = Product(name: "awesome bag 4", price: 2600, rating: 4.5, imageUrl: "images/bagImage4.jpg");
Product bag5 = Product(name: "awesome bag 5", price: 2500, rating: 4.5, imageUrl: "images/bagImage5.jpg");
Product bag6 = Product(name: "awesome bag 6", price: 2343, rating: 4.5, imageUrl: "images/bagImage6.jpg");

List<Product> products = [bag1,bag2,bag3, bag4, bag5, bag6];