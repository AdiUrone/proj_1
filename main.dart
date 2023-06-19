import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int clicks = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My ID Card',style: TextStyle(fontFamily: "Georgia", fontSize: 20),),
        centerTitle: true,
        backgroundColor: Colors.amber[200],
        elevation: 0.0,
        toolbarHeight: 30.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            clicks+=1;
          });
        },
        backgroundColor: Colors.grey[600],
        child: const Icon(Icons.add),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/Gold-Dark-Background.jpg"),
                fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top:20.0, left: 25.0),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  const CircleAvatar(radius: 55, backgroundImage: AssetImage("images/guy-anime-avatar-free-vector.jpg"),),
                  const SizedBox(width: 35),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Text("Aditya Gupta",style: TextStyle(fontSize: 38,color: Colors.white, fontFamily: "Georgia")),
                      Text("Developer",style: TextStyle(fontSize: 20,color: Colors.cyan, fontFamily: "Kosans"),),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: const <Widget>[
                        Icon(Icons.school_rounded,color: Colors.amber, size: 35,),
                        SizedBox(width: 40,),
                        Text("St Andrews Scots Sr Sec School", style: TextStyle(fontSize: 19,color: Colors.yellowAccent, fontFamily: "Georgia")),
                      ],
                    ),
                    Row(
                      children: const <Widget>[
                        Icon(Icons.grade,color: Colors.amber, size: 35,),
                        SizedBox(width: 40,),
                        Text("A+", style: TextStyle(fontSize: 19,color: Colors.yellowAccent, fontFamily: "Georgia"),),
                      ],
                    ),
                    Row(
                      children: const <Widget>[
                        Icon(Icons.mail,color: Colors.amber, size: 35,),
                        SizedBox(width: 40,),
                        Text("aditya142003.gupta@gmail.com", style: TextStyle(fontSize: 19,color: Colors.yellowAccent, fontFamily: "Georgia"),),
                      ],
                    ),
                    Row(
                      children: const <Widget>[
                        Icon(Icons.call,color: Colors.amber, size: 35,),
                        SizedBox(width: 40,),
                        Text("9718726204", style: TextStyle(fontSize: 19,color: Colors.yellowAccent, fontFamily: "Georgia"),),
                      ],
                    ),
                    Row(
                      children: const <Widget>[
                        Icon(Icons.location_pin,color: Colors.amber, size: 35,),
                        SizedBox(width: 40,),
                        Text("New Delhi", style: TextStyle(fontSize: 19,color: Colors.yellowAccent, fontFamily: "Georgia"),),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        const Icon(Icons.ads_click,color: Colors.blueGrey, size: 35,),
                        const SizedBox(width: 40,),
                        Text("$clicks", style: const TextStyle(fontSize: 19,color: Colors.blueGrey, fontFamily: "Kosans"),),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 80,),
              const Padding(
                padding: EdgeInsets.only(right: 14.0),
                child: Text("I am a 3rd Year BTech Student",style: TextStyle(fontSize: 26,color: Colors.cyan, fontFamily: "Georgia"),),
              ),
              const SizedBox(height: 50,),
              const Padding(
                padding: EdgeInsets.only(right: 14.0),
                child: Text("Created by Aditya",style: TextStyle(fontSize: 18,color: Colors.grey, fontFamily: "Kosans"),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

