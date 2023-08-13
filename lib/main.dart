import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp()
  ));

}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image:AssetImage("img/sky.jpg"),fit: BoxFit.cover)
        )
          
        ,
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX:5,sigmaY: 5),
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:50.0),
                  child: Text("MaontainView ", style: TextStyle(color: Colors.white, fontSize: 35),),
                ),
                
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: const Text("clear Sky ", style: TextStyle(color: Colors.white, fontSize: 20),),
                ),
                
                Padding(
                  padding: const EdgeInsets.only(top:30),
                  child: Icon(Icons.wb_sunny_outlined, size: 70,color: Colors.white,),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:15),
                  child: Text("14"+"\u00B0", style: TextStyle(color: Colors.white, fontSize:60)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Column(
                      children:  [
                        Text("max",style: TextStyle(color: Colors.grey, fontSize: 20),),
                        Padding(
                          padding: EdgeInsets.only(top:10),
                          child: Text("16"+"\u00B0",style: TextStyle(color: Colors.white, fontSize: 20),),
                        )
                      ],
                    ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: Container(
                      width: 1,
                      height: 50,
                      color: Colors.white,
                    ),
                  ),
                    Column(
                      children: [
                        Text("min",style: TextStyle(color: Colors.grey, fontSize: 20),),
                        const Padding(
                          padding: EdgeInsets.only(top:10),
                          child: Text("10"+"\u00B0",style: TextStyle(color: Colors.white,fontSize: 20),),
                        ),
                  ],
                ),
              ],
            ),
        
            Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Container(
                      color: const Color.fromARGB(255, 171, 171, 171),
                      height: 1,
                      width: double.infinity),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Center(
                    child: Container(
                      width:double.infinity,
                      height: 70,
                      child: Center(
                        child: ListView.builder(
                          itemCount: 12,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,////////kol faza ro nagir andazeh container
                          itemBuilder:(BuildContext context,int post) {
                          return  const SizedBox(
                            height: 50,
                            width: 50,
                            
                            child: Card(
                              
                              color: Colors.transparent,
                              child: Column(children: [
                                Text("fri,8mp",style: TextStyle(color: Colors.grey,fontSize: 10),),
                                Icon(Icons.cloud,color: Colors.white, ),
                                Text("14"+"\u00B0",style: TextStyle(color: Colors.grey,fontSize: 12),),
                                          
                              ]),
                                                  
                            ),
                          );
                          
                        },),
                      ),
                    ),
                  ),
                ),
                Container(
                    color: const Color.fromARGB(255, 171, 171, 171),
                    height: 1,
                    width: double.infinity),
                    Padding(
                      padding: const EdgeInsets.only(top:8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Text("windeSpeed", style: TextStyle(color: Colors.grey,fontSize: 12),),
                              Padding(
                                padding: const EdgeInsets.only(top:8.0),
                                child: Text("47 km/h ", style: TextStyle(color: Colors.white),),
                              ),
        
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10,right: 10),
                            child: Container(
                            width: 1,
                            height: 50,
                            color: Colors.white,
                            ),
                          ),
        
                          Column(
                            children: [
                              Text("sunreis", style: TextStyle(color: Colors.grey,fontSize: 12),),
                              Padding(
                                padding: const EdgeInsets.only(top:8.0),
                                child: Text("19:0 ", style: TextStyle(color: Colors.white),),
                              ),
                            ],
                          ),
        
                          Padding(
                            padding: const EdgeInsets.only(left: 10,right: 10),
                            child: Container(
                            width: 1,
                            height: 50,
                            color: Colors.white,
                            ),
                          ),
        
                          Column(
                            children: [
                              Text("sensets", style: TextStyle(color: Colors.grey,fontSize: 12),),
                              Padding(
                                padding: const EdgeInsets.only(top:8.0),
                                child: Text("18 ", style: TextStyle(color: Colors.white),),
                              ),
        
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10,right: 12),
                            child: Container(
                            width: 1,
                            height: 50,
                            color: Colors.white,
                            ),
                          ),
        
                          Column(
                            children: [
                              Text("humidity", style: TextStyle(color: Colors.grey,fontSize: 12),),
                              Padding(
                                padding: const EdgeInsets.only(top:8.0),
                                child: Text("52% ", style: TextStyle(color: Colors.white),),
                              ),
        
                            ],
                          ),
        
        
                        ],
                      ),
                    ),
                    
        
              ]
          ),
              ),
        ),


    ));
  }
}

