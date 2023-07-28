import 'package:flutter/material.dart';
import 'package:flutter_test1/main%20copy.dart';

main(){
  runApp(MyAppp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Tab"),
            bottom: TabBar(
                tabs: 
                [Tab( icon: Icon(Icons.house_rounded), ),
                Tab( icon: Icon(Icons.list_alt_rounded), ),
                Tab(icon: Icon(Icons.add_a_photo_rounded),),
                ]
                 ),
            ),
          ),
      ),
      );
  }
}