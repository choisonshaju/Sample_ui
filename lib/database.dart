class FoodDetail {
  String image;
  String name;
  double price;
  double rating;

  String cookingTime;

  FoodDetail({
    required this.image,
    required this.name,
    required this.price,
    required this.rating,
    required this.cookingTime,
  });
}

List<FoodDetail> foodsItems = [
  FoodDetail(
    image:
        'https://hips.hearstapps.com/hmg-prod/images/avocado-salad-1524672116.png?crop=1xw:0.843328335832084xh;center,top',
    name: 'Avocado Salad',
    price: 12,
    rating: 4.5,
    cookingTime: '20min',
  ),
  FoodDetail(
    image:
        'https://c8.alamy.com/comp/2J7Y39N/hamburger-with-cheese-and-fresh-vegetables-isolated-on-white-2J7Y39N.jpg',
    name: 'Burger',
    price: 20,
    rating: 5.0,
    cookingTime: '30min',
  ),
  FoodDetail(
    image:
        'https://www.modernhoney.com/wp-content/uploads/2023/05/Fruit-Salad-10.jpg',
    name: 'Fruit Salad',
    price: 12,
    rating: 4.6,
    cookingTime: '15min',
  ),
  FoodDetail(
    image:
        'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/the-health-benefits-of-nuts-main-image-700-350-bb95ac2.jpg?resize=768,574',
    name: 'Mix Nut',
    price: 30,
    rating: 5.0,
    cookingTime: '08min',
  ),
];
