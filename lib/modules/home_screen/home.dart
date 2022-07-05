import 'package:e_shope/constants.dart';
import 'package:e_shope/screen.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        /* leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ), */
        title: Text("E_shope"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView.separated(
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: (() =>
                    navToScreen(context, Screen3(title: "List $index"))),
                child: Container(
                    height: 80,
                    color: Colors.grey[100],
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.orange,
                          radius: 30,
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("person name" * 3),
                              SizedBox(
                                height: 20,
                              ),
                              Text("hey ther how are you"),
                            ],
                          ),
                        )
                      ],
                    )),
              );
            },
            separatorBuilder: (context, index) => SizedBox(
                  height: 20,
                ),
            itemCount: 30),
      ),
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(3, 3, 5, 6),
                      radius: 35,
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: Color.fromARGB(255, 170, 38, 38),
                        child: Icon(Icons.person,
                        size: 50,
                        ),
                      ),
                      
                      
                    ),
                  ],
                ),
              ),
              SizedBox(width: 21,),
              Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return Container(
                        height: 50,
                        color: Colors.grey[400],
                        child: ListTile(
                          
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: 10,
                      );
                    },
                    itemCount: 10),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selected,
          backgroundColor: Colors.grey,
          onTap: (index) {
            selected = index;
            setState(() {});
            navToScreen(
                context,
                Screen3(
                  title: "nave $index",
                ));
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "home",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.book), label: "home"),
            BottomNavigationBarItem(icon: Icon(Icons.stars), label: "home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.heart_broken), label: "home"),
          ]),
    );
  }
}
