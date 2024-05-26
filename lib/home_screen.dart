import 'package:flutter/material.dart';
import 'package:taskui/database.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  List<String> arr = ['SALADS', 'HOT SALE', 'POPULARITY'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.location_on),
            Text(
              "chalakudy city",
              style: TextStyle(color: Colors.black),
            ),
            Spacer(),
            Stack(
              children: [
                CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 221, 219, 219),
                  child: Icon(Icons.sort),
                )
              ],
            )
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RichText(
              text: TextSpan(
                  text: "Find The",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                  ),
                  children: [
                    TextSpan(
                        text: " BEST\nFOOD",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30)),
                    TextSpan(
                      text: " Around You",
                    ),
                  ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey,
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.miscellaneous_services_sharp),
                  hintText: "Search Your Favourite food",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                "Find ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              Text(
                "  5KM >",
                style: TextStyle(
                    color: Color.fromARGB(255, 237, 190, 50), fontSize: 15),
              )
            ],
          ),
          Container(
            height: 70,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: arr.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      color: Colors.grey),
                  child: Center(
                    child: Text(
                      arr[index],
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 360,
              child: GridView.builder(
                shrinkWrap: true,
                itemCount: foodsItems.length,
                padding: const EdgeInsets.all(30),
                scrollDirection: Axis.vertical,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 0.6,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 15,
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, index) {
                  FoodDetail food = foodsItems[index];
                  return GestureDetector(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Stack(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 25),
                              Center(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(125),
                                  child: Image.network(
                                    food.image,
                                    height: 120,
                                    width: 120,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 15),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  food.name,
                                  maxLines: 1,
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  children: [
                                    Text(
                                      food.cookingTime,
                                    ),
                                    Spacer(),
                                    Icon(Icons.star_outline,
                                        color: Colors.yellow, size: 18),
                                    Text(food.rating.toString())
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(17.0),
                                child: Text(
                                  '\$${food.price}.00',
                                  style: const TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 150, top: 10),
                            child: Icon(Icons.favorite_border),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Material(
                              color: Colors.green,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(8),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
