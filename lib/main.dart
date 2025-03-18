import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int pizzaType = 0;
  List<String> prices =[
    'vegetarian pizza =KSH 500'
    'Silicon Pizza = KSH 800'
    'St Louis Pizza= KSH 1000'

  ];// Corrected the variable name

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NYALI Pizza'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(31, 201, 68, 31),
       
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: CircleAvatar(
              foregroundImage: NetworkImage(
                  'https://stock.adobe.com/search?k=pizza&asset_id=27579652'), // Use a valid image URL here
              radius: 40.0,
            ),
          ),
          Divider(
            height: 60.0,
            color: Colors.black,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Affordable prices'),
              SizedBox(width: 10),
              Text('Delicious!'),
            ],
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(20.0),
              color: Colors.cyan,
              child: Center(child: Text(' type 1-Vegetarian pizza')),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.pink,
              child: Center(child: Text('type 2-Silicon Pizza')),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(40.0),
              color: Colors.amber,
              child: Center(child: Text('type 3-St. Louis pizza')),
            ),
          ),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 35, 205, 41),
            ),
            child: Text('Click here to order', style: TextStyle(color: Colors.white)),
          ),
          Container(
            color: Colors.cyan,
            padding: EdgeInsets.all(30.0),
            child: Text('Add to cart', style: TextStyle(fontSize: 16)),
          ),
          Text('Pizza Type: $pizzaType'), // Display pizzaType value
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            pizzaType += 1; // Increment pizzaType
          });
        },
        child: Icon(Icons.shopping_cart),
        backgroundColor: Colors.amber,
      ),
    );
  }
}
