import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
     body:SingleChildScrollView(
       child: Container(
        margin: EdgeInsets.only(bottom: 30),
        child:  Column(
          children: [
            Stack(
       
              children:[
                Container(
                height: 200,
                padding: EdgeInsets.only(left: 20,top: 50),
                decoration: BoxDecoration(
                  color: Color(0XFF2a2b31),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)
                  )
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                 ClipRRect(
                  borderRadius: BorderRadius.circular(60),
                    child: Image.asset("assets/image/images.png",
                    height: 50,
                    width: 50,
                    fit: BoxFit.cover
                    ,)),
                    SizedBox(width: 20,)
                    ,Padding(padding: const EdgeInsets.only(top: 10),
                      child: 
                      Text("khhaled Alzoubi",
                      style: TextStyle(color:Colors.red )
                      ,),
                    
                    )
                  ],
                ),
              ),
              ]
              // Container(child: Row(
              //   children: [
       
              //   ],
              // ),)
            ),
            SizedBox(height: 30,),
            Padding(
              padding:const EdgeInsets.only(left: 20,right: 20),
              child:  Text("top Queiz categories ",), 
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Material(
                      borderRadius: BorderRadius.circular(20),
                      elevation: 5,
                    child: Container(
                      width: 130,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                      ),
                      child: Column(
                        children: [
                                      Image.asset("assets/image/images.png",
                        height: 80,width: 80,fit: BoxFit.cover,),
                        SizedBox(height: 20,),
                        Text("animeal"),
                        ]
                      ),
                    ),
                  ),
                           Material(
                      borderRadius: BorderRadius.circular(20),
                      elevation: 5,
                    child: Container(
                      width: 130,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                      ),
                      child: Column(
                        children: [
                                      Image.asset("assets/image/images.png",
                        height: 80,width: 80,fit: BoxFit.cover,),
                        SizedBox(height: 20,),
                        Text("animeal"),
                        ]
                      ),
                    ),
                  ),
                ],
              ),
            ),
             Padding(
              padding:const EdgeInsets.only(left: 20,right: 20),
              
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Material(
                      borderRadius: BorderRadius.circular(20),
                      elevation: 5,
                    child: Container(
                      width: 130,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                      ),
                      child: Column(
                        children: [
                                      Image.asset("assets/image/images.png",
                        height: 80,width: 80,fit: BoxFit.cover,),
                        SizedBox(height: 20,),
                        Text("gggg"),
                        ]
                      ),
                    ),
                  ),
                           Material(
                      borderRadius: BorderRadius.circular(20),
                      elevation: 5,
                    child: Container(
                      width: 130,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                      ),
                      child: Column(
                        children: [
                                      Image.asset("assets/image/images.png",
                        height: 80,width: 80,fit: BoxFit.cover,),
                        SizedBox(height: 20,),
                        Text("gggg"),
                        ]
                      ),
                    ),
                  ),
                ],
              ),
            ),
             Padding(
              padding:const EdgeInsets.only(left: 20,right: 20),
           
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Material(
                      borderRadius: BorderRadius.circular(20),
                      elevation: 5,
                    child: Container(
                      width: 130,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                      ),
                      child: Column(
                        children: [
                                      Image.asset("assets/image/images.png",
                        height: 80,width: 80,fit: BoxFit.cover,),
                        SizedBox(height: 20,),
                        Text("gggg"),
                        ]
                      ),
                    ),
                  ),
                           Material(
                      borderRadius: BorderRadius.circular(20),
                      elevation: 5,
                    child: Container(
                      width: 130,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                      ),
                      child: Column(
                        children: [
                                      Image.asset("assets/image/images.png",
                        height: 80,width: 80,fit: BoxFit.cover,),
                        SizedBox(height: 20,),
                        Text("gggg"),
                        ]
                      ),
                    ),
                  ),
                ],
              ),
            ),
             Padding(
              padding:const EdgeInsets.only(left: 20,right: 20),
            
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Material(
                      borderRadius: BorderRadius.circular(20),
                      elevation: 5,
                    child: Container(
                      width: 130,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                      ),
                      child: Column(
                        children: [
                                      Image.asset("assets/image/images.png",
                        height: 80,width: 80,fit: BoxFit.cover,),
                        SizedBox(height: 20,),
                        Text("gggg"),
                        ]
                      ),
                    ),
                  ),
                           Material(
                      borderRadius: BorderRadius.circular(20),
                      elevation: 5,
                    child: Container(
                      width: 130,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                      ),
                      child: Column(
                        children: [
                                      Image.asset("assets/image/images.png",
                        height: 80,width: 80,fit: BoxFit.cover,),
                        SizedBox(height: 20,),
                        Text("gggg"),
                        ]
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
       ),
     )
  );
  }
}