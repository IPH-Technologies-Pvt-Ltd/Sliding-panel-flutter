import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

var uuid = const Uuid();

class Category {
  int id;
  Icon icon;
  Color color;
  String name;
  String type;
  bool selected;
  Item item;
  Category(
      {required this.id,
      required this.icon,
      required this.color,
      required this.name,
      required this.type,
      required this.selected,
      required this.item});
}

class CategoryData {
  List<Category> CategoryListFirst = [];
  CategoryData() {
    CategoryListFirst = [
      Category(
        id: 1,
        icon: Icon(Icons.fastfood, color: Colors.red),
        name: 'Fast food',
        type: 'Fast food',
        selected: true,
        color: Colors.red,
        item: Item(
          id: 1,
          image: [
            Images(
                id: uuid.v1(),
                name:
                    "https://cdn.britannica.com/98/235798-050-3C3BA15D/Hamburger-and-french-fries-paper-box.jpg",
                detail: "Fast food one"),
            Images(
                id: uuid.v1(),
                name:
                    "https://upload.wikimedia.org/wikipedia/commons/b/b0/Hamburger_%2812164386105%29.jpg",
                detail: "Fast food two")
          ],
        ),
      ),
      Category(
        id: 2,
        icon: Icon(Icons.menu_book, color: Colors.blue),
        name: 'Menu Book',
        color: Colors.blue,
        selected: false,
        type: 'Menu',
        item: Item(
          id: 2,
          image: [
            Images(
                id: uuid.v1(),
                name:
                    "https://c8.alamy.com/comp/2A5040E/top-view-of-a-menu-book-at-a-restaurant-2A5040E.jpg",
                detail: "Menu book one"),
            Images(
                id: uuid.v1(),
                name:
                    "https://img.freepik.com/premium-psd/food-menu-book-side-b_25996-223.jpg?w=2000",
                detail: "Menu book two")
          ],
        ),
      ),
      Category(
        id: 3,
        icon: Icon(Icons.emoji_food_beverage, color: Colors.green),
        name: 'Emoji Food ',
        type: 'Emoji',
        selected: false,
        color: Colors.green,
        item: Item(
          id: 3,
          image: [
            Images(
                id: uuid.v1(),
                name:
                    "https://www.deliciousmagazine.co.uk/wp-content/uploads/2017/11/du-768x960.jpg",
                detail: "Emoji food one"),
            Images(
                id: uuid.v1(),
                name:
                    "https://c8.alamy.com/comp/FTWXBH/emoticon-smiley-eating-hamburger-FTWXBH.jpg",
                detail: "Emoji food two")
          ],
        ),
      ),
      Category(
        id: 4,
        icon: Icon(Icons.liquor, color: Colors.yellow),
        name: 'Liquor',
        type: 'Liquor',
        selected: false,
        color: Colors.yellow,
        item: Item(
          id: 4,
          image: [
            Images(
                id: uuid.v1(),
                name: "fast food_image_url",
                detail: "Fast food item details")
          ],
        ),
      ),
      Category(
        id: 5,
        icon: Icon(Icons.cake, color: Colors.orange),
        name: 'Cake',
        type: 'Cake',
        selected: false,
        color: Colors.orange,
        item: Item(
          id: 5,
          image: [
            Images(
                id: uuid.v1(),
                name: "https://clipart-library.com/images/Lid57EoET.jpg",
                detail: "Cake one"),
            Images(
                id: uuid.v1(),
                name:
                    "https://image.shutterstock.com/image-photo/white-birthday-cake-colorful-sprinkles-260nw-1040014852.jpg",
                detail: "Cake two")
          ],
        ),
      ),
      Category(
        id: 6,
        icon: Icon(Icons.restaurant, color: Colors.purple),
        name: 'Restaurant',
        type: "Restaurant",
        selected: false,
        color: Colors.purple,
        item: Item(
          id: 6,
          image: [
            Images(
                id: uuid.v1(),
                name: "fast food_image_url",
                detail: "Fast food item details")
          ],
        ),
      ),
      Category(
        id: 7,
        icon: Icon(Icons.food_bank, color: Colors.cyan),
        name: 'Food Bank',
        type: 'Food',
        selected: false,
        color: Colors.cyan,
        item: Item(
          id: 7,
          image: [
            Images(
                id: uuid.v1(),
                name: "fast food_image_url",
                detail: "Fast food item details")
          ],
        ),
      ),
      Category(
        id: 8,
        icon: Icon(Icons.dinner_dining, color: Colors.lime),
        name: 'Dinner Dining',
        type: 'Dinner',
        selected: false,
        color: Colors.lime,
        item: Item(
          id: 8,
          image: [
            Images(
                id: uuid.v1(),
                name: "fast food_image_url",
                detail: "Fast food item details")
          ],
        ),
      ),
      Category(
        id: 9,
        icon: Icon(Icons.lunch_dining, color: Colors.deepOrange),
        name: 'Lunch Dining',
        type: 'Lunch',
        selected: false,
        color: Colors.deepOrange,
        item: Item(
          id: 9,
          image: [
            Images(
                id: uuid.v1(),
                name: "fast food_image_url",
                detail: "Fast food item details")
          ],
        ),
      ),
      Category(
        id: 10,
        icon: Icon(Icons.bakery_dining, color: Colors.blueGrey),
        name: 'Bakery Dining',
        type: 'Bakery',
        selected: false,
        color: Colors.blueGrey,
        item: Item(
          id: 10,
          image: [
            Images(
                id: uuid.v1(),
                name: "fast food_image_url",
                detail: "Fast food item details")
          ],
        ),
      ),
      Category(
        id: 11,
        icon: Icon(Icons.nightlife, color: Colors.amber),
        name: 'Nightlife',
        type: 'Nightlife',
        selected: false,
        color: Colors.amber,
        item: Item(
          id: 11,
          image: [
            Images(
                id: uuid.v1(),
                name: "fast food_image_url",
                detail: "Fast food item details")
          ],
        ),
      ),
      Category(
        id: 12,
        icon: Icon(Icons.local_dining, color: Colors.indigo),
        name: 'Local Dining',
        type: 'Local',
        selected: false,
        color: Colors.indigo,
        item: Item(
          id: 12,
          image: [
            Images(
                id: uuid.v1(),
                name: "fast food_image_url",
                detail: "Fast food item details")
          ],
        ),
      ),
      Category(
        id: 13,
        icon: Icon(Icons.takeout_dining, color: Colors.lightGreen),
        name: 'Takeout Dining',
        type: 'Takeout',
        selected: false,
        color: Colors.lightGreen,
        item: Item(
          id: 13,
          image: [
            Images(
                id: uuid.v1(),
                name: "fast food_image_url",
                detail: "Fast food item details")
          ],
        ),
      ),
      Category(
        id: 14,
        icon: Icon(Icons.egg, color: Colors.pinkAccent),
        name: 'Egg',
        type: 'Egg',
        selected: false,
        color: Colors.pinkAccent,
        item: Item(
          id: 14,
          image: [
            Images(
                id: uuid.v1(),
                name: "fast food_image_url",
                detail: "Fast food item details")
          ],
        ),
      ),
      Category(
        id: 15,
        icon: Icon(Icons.icecream, color: Colors.orangeAccent),
        name: 'Icecream',
        type: 'Icecream',
        selected: false,
        color: Colors.orangeAccent,
        item: Item(
          id: 15,
          image: [
            Images(
                id: uuid.v1(),
                name: "fast food_image_url",
                detail: "Fast food item details")
          ],
        ),
      ),
      Category(
        id: 16,
        icon: Icon(Icons.brunch_dining, color: Colors.grey),
        name: 'Brunch Dining',
        type: 'Brunch',
        selected: false,
        color: Colors.grey,
        item: Item(
          id: 16,
          image: [
            Images(
                id: uuid.v1(),
                name: "fast food_image_url",
                detail: "Fast food item details")
          ],
        ),
      ),
      Category(
        id: 17,
        icon: Icon(Icons.rice_bowl, color: Colors.blue),
        name: 'Rice Bowl',
        color: Colors.blue,
        selected: false,
        type: 'Rice',
        item: Item(
          id: 17,
          image: [
            Images(
                id: uuid.v1(),
                name: "fast food_image_url",
                detail: "Fast food item details")
          ],
        ),
      ),
      Category(
        id: 18,
        icon: Icon(Icons.kebab_dining, color: Colors.yellow),
        name: 'Kebab Dining',
        type: 'Kebab',
        selected: false,
        color: Colors.yellow,
        item: Item(
          id: 18,
          image: [
            Images(
                id: uuid.v1(),
                name: "fast food_image_url",
                detail: "Fast food item details")
          ],
        ),
      ),
      Category(
        id: 19,
        icon: Icon(Icons.no_meals, color: Colors.red),
        name: 'No Meals',
        type: 'No Meals',
        selected: false,
        color: Colors.red,
        item: Item(
          id: 19,
          image: [
            Images(
                id: uuid.v1(),
                name: "fast food_image_url",
                detail: "Fast food item details")
          ],
        ),
      ),
      Category(
        id: 20,
        icon: Icon(Icons.no_drinks, color: Colors.teal),
        name: 'No Drinks',
        type: 'NoDrinks',
        selected: false,
        color: Colors.teal,
        item: Item(
          id: 20,
          image: [
            Images(
                id: uuid.v1(),
                name: "fast food_image_url",
                detail: "Fast food item details")
          ],
        ),
      ),
      Category(
        id: 21,
        icon: Icon(Icons.kitchen, color: Colors.teal),
        name: 'Kitchen',
        type: 'Kitchen',
        selected: false,
        color: Colors.teal,
        item: Item(
          id: 21,
          image: [
            Images(
                id: uuid.v1(),
                name: "fast food_image_url",
                detail: "Fast food item details")
          ],
        ),
      ),
      Category(
        id: 22,
        icon: Icon(Icons.local_cafe, color: Colors.pink),
        name: 'Local Cafe',
        type: 'Local',
        selected: false,
        color: Colors.pink,
        item: Item(
          id: 22,
          image: [
            Images(
                id: uuid.v1(),
                name: "fast food_image_url",
                detail: "Fast food item details")
          ],
        ),
      ),
    ];
  }
  void selectcat(int id) {
    for (var category in CategoryListFirst) {
      if (category.id == id) {
        category.selected = true;
      }
      if (category.id != id) {
        category.selected = false;
      }
    }
  }
}

class Item {
  int id;
  List<Images> image = [];

  Item({
    required this.id,
    required this.image,
  });
}

class Images {
  String id;
  String name;
  String detail;
  Images({required this.id, required this.name, required this.detail});
}
