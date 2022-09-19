import 'package:flutter/material.dart';
import 'package:flutter_application_menu/models/food.dart';
import 'package:flutter_application_menu/screens/food_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  var foods = [
    Food(
      name: 'Pasta',
      imgURL: 'https://i.ibb.co/qkVjqyQ/pngaaa-com-1480399.png',
    ),
    Food(
      name: 'Burger',
      imgURL: 'https://i.ibb.co/FxkkgK6/pngaaa-com-81660.png',
    ),
    Food(
      name: 'Pizza',
      imgURL:
          'https://i.ibb.co/MCqMjSj/png-clipart-california-style-pizza-sicilian-pizza-chrono-pizza-fast-food-pizza-menu-food-recipe-1-re.png',
    ),
    Food(
      name: 'Suchi',
      imgURL:
          'https://i.ibb.co/0D2gP6T/2cd43b-e5828aa119524592ab00126dfa48a944-mv2-removebg-preview.png',
    ),
    Food(
      name: 'Suchi',
      imgURL:
          'https://i.ibb.co/0D2gP6T/2cd43b-e5828aa119524592ab00126dfa48a944-mv2-removebg-preview.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
      ),
      body: ListView.builder(
        itemCount: foods.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 6,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FoodScreen(
                      food: foods[index],
                    ),
                  ),
                );
              },
              child: Row(
                children: [
                  Image.network(
                    foods[index].imgURL,
                    width: 150,
                    height: 150,
                  ),
                  Container(
                    padding: EdgeInsets.all(40),
                    child: Text(
                      foods[index].name,
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
