import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyAppp());
}

class MyAppp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
      
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    ListScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            
            // Icon(icon)
            Icon(Icons.add_home_work ,color: Colors.black,),
            SizedBox(width: 10),
            Text("DCT Apa ya",style: TextStyle(color: Colors.black),
            ),
          ],
        ),
        backgroundColor: Color.fromARGB(255, 220, 241, 243),
       
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: "List",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Home Screen"),
    );
  }
}

class ListScreen extends StatelessWidget {
  var faker = Faker();
  final List<Map<String, dynamic>> myList = [
       {
      "Name": "Reza",
      "Age": "23",
      "FavColor": ["Black", "Red", "Amber", "Red", "Red", "Amber", "Red", "Red", "Amber", "Red", "Red", "Amber", "Red", "Red", "Amber", "Red", "Red", "Amber", "Red", "Red", "Amber", "Red", "Red", "Amber", "Red", "Red", "Amber", "Red", "Red", "Amber", "Red", "Red", "Amber", "Red", "Red", "Amber", "Red", "Red", "Amber", "Red", "Red", "Amber", "Red", "Red", "Amber", "Red", "Red", "Amber", "Red", "Red", "Amber", "Red", "Red", "Amber", "Red", "Red", "Amber", "Red", "Red", "Amber", "Red", "Red", "Amber", "Red", "Red", "Amber", "Red", "Red", "Amber", "Red", "Red", "Amber", "Red", "Red", "Amber", "Red", "Red", "Amber", "Red", "Red", "Amber", "Red", "Red", "Amber", "Red", "Red", "Amber", "Red", "Red", "Amber", "Red", "Red", "Amber", "Red"],
      "idex": 101,
    },
    {
      "Name": "Ashraf",
      "Age": "26",
      "FavColor": ["White", "Red", "Amber"],
      "idex": 102,
    },
    {
      "Name": "Ashraf",
      "Age": "26",
      "FavColor": ["White", "Red", "Amber"],
      "idex": 103,
    },
    {
      "Name": "Ashraf",
      "Age": "26",
      "FavColor": ["White", "Red", "Amber"],
      "idex": 104,
    },
    {
      "Name": "Ashraf",
      "Age": "26",
      "FavColor": ["White", "Red", "Amber"],
      "idex": 105,
    },
    {
      "Name": "Ashraf",
      "Age": "26",
      "FavColor": ["White", "Red", "Amber"],
      "idex": 106,
    },
    {
      "Name": "Ashraf",
      "Age": "26",
      "FavColor": ["White", "Red", "Amber"],
      "idex": 107,
    },
    {
      "Name": "Ashraf",
      "Age": "26",
      "FavColor": ["White", "Red", "Amber"],
      "idex": 108,
    },
    {
      "Name": "Ashraf",
      "Age": "26",
      "FavColor": ["White", "Red", "Amber"],
      "idex": 109,
    },
    {
      "Name": "Ashraf",
      "Age": "26",
      "FavColor": ["White", "Red", "Amber"],
      "idex": 110,
    },
    {
      "Name": "Ashraf",
      "Age": "26",
      "FavColor": ["White", "Red", "Amber"],
      "idex": 111,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         body: ListView(
          children: myList.map((data) {
            List myfavcolour = data["FavColor"];
            return Card(
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 12),
              color: Color.fromARGB(255, 209, 247, 253),
              shadowColor: Colors.amber,
              child: Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // row
                    Row(
                      children: [
                        CircleAvatar(
                          // Menggunakan Image.network untuk mengisi CircleAvatar
                          backgroundImage: Image.network(
                            "https://picsum.photos/id/${data['idex']}/200/200",
                          ).image,
                        ),
                        SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Name: ${data['Name']}"),
                            Text("Age: ${data['Age']}"),
                          ],
                        )
                      ],
                    ),
                    // favcolour
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: myfavcolour.map((color) {
                          return Container(
                            color: Color.fromARGB(255, 178, 255, 184),
                            margin: EdgeInsets.symmetric(
                                vertical: 15, horizontal: 10),
                            padding: EdgeInsets.all(10),
                            child: Text(color),
                          );
                        }).toList(),
                      ),
                    )
                  ],
                ),
              ),
            );
          }).toList(),
        ),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Profile Screen"),
    );
  }
}