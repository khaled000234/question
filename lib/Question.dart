import 'package:flutter/material.dart';

class Question extends StatefulWidget {
  const Question({super.key});

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 30,left: 20),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue
                    ),
                    child: Icon(Icons.arrow_back,color: Colors.red,
                    
                    ),
                  ),
                  SizedBox(width: 130,),
                  Center(
                    child: Text("sport ",style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.bold),
                    ),
                  ),
                  
                 
                ],
              ),
            ),
             Expanded(
                    child: Container(
                       height:MediaQuery.of(context).size.height/1.15 ,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(color:Colors.white,borderRadius: 
                      BorderRadius.only(topLeft: Radius.circular(20)
                      ,topRight: Radius.circular(20))),
                      child: Column(
                        children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ClipRRect(borderRadius: BorderRadius.circular(20),
                        child: Image.asset("assets/image/Cool-Anime-Wallpaper-For-Computerfff.jpg",
                        height: 300,
                        width: MediaQuery.of(context).size.width,fit:BoxFit.cover,)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.all(10),
                          decoration:BoxDecoration(border: Border.all(color:Colors.blue,),borderRadius: BorderRadius.circular(20)
                            
                                    )
                         
                          , child: Text("dldldlldldlld",style: TextStyle(color: Colors.black,fontSize: 18),),
                        ),
                    ),
                      
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.all(10),
                          decoration:BoxDecoration(border: Border.all(color:Colors.blue,),borderRadius: BorderRadius.circular(20)
                            
                                    )
                                                 
                          , child: Text("dldldlldldlld",style: TextStyle(color: Colors.black,fontSize: 18),),
                                                ),
                        ),
                      
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.all(10),
                          decoration:BoxDecoration(border: Border.all(color:Colors.blue,),borderRadius: BorderRadius.circular(20)
                            
                                    )
                                                 
                          , child: Text("dldldlldldlld",style: TextStyle(color: Colors.black,fontSize: 18),),
                                                ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.all(10),
                          decoration:BoxDecoration(border: Border.all(color:Colors.blue,),borderRadius: BorderRadius.circular(20)
                            
                                    )
                                                 
                          , child: Text("dldldlldldlld",style: TextStyle(color: Colors.black,fontSize: 18),),
                                                ),
                        ),
                      
                    
                        ],
                      ),
                    ),
                    
                  )
          ],
        ),
      ),
      

    );
  }
}