import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'REMOTE CONTROL',
      theme: ThemeData(
        

        primarySwatch: Colors.deepPurple,
      ),
      home: const MyHomePage(title: 'REMOTE CONTROL'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String text = '';
    
  

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        

        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 300,
              width: 300,
              color: const Color.fromARGB(255, 255, 148, 167),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: () {
                          setState(() {
                            text = "FORWARD";
                          });
                        }, child: const Text("FORWARD")),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(onPressed: () {
                          setState(() {
                            text = "LEFT";
                          });
                        }, child: const Text("LEFT")),
                        ElevatedButton(onPressed: () {
                          setState(() {
                            text = "RIGHT";
                          });
                        }, child: const Text("RIGHT")),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(onPressed: () {
                          setState(() {
                            text = "Reverse";
                          });
                        }, child: const Text("Reverse")),
                      ],
                    ),

                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(onPressed: (){

                            setState(() {
                              text = 'STOP';
                            });
                          }
                          
                          , child: const Text ("STOP")),
                        ],


                    ),
                    Text(text)
                  ],
                ),
              ),
            ),
          )
        ],
        


      ),
      
        
        
    );
  }
}
