import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:question/AddQuiz.dart';

class Admin extends StatefulWidget {
  const Admin({super.key});

  @override
  State<Admin> createState() => _AdminState();
}
TextEditingController username=TextEditingController();
TextEditingController pass=TextEditingController();
class _AdminState extends State<Admin> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

        children: [
           SizedBox(height: 100,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Column(children: [
                TextFormField(
              controller:username ,
              validator: (value) {
                
              if (value == null || value.isEmpty) {
                return 'please enter username';
              }
              },
              decoration: InputDecoration(border: InputBorder.none,
              hintText: "usename",
              hintStyle: TextStyle(color: Colors.blue)
              ),
            ),
              ],),
            ),
          ),
          SizedBox(height: 20,),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(
                   child: Column(children: [
                     TextFormField(
                             controller:pass ,
                             validator: (value) {
                               
                             if (value == null || value.isEmpty) {
                               return 'please enter username';
                             }
                             },
                             decoration: InputDecoration(border: InputBorder.none,
                             hintText: "password",
                             hintStyle: TextStyle(color: Colors.blue)
                             ),
                           ),
                   ],),
                           ),
                           
                      

               ),
               SizedBox(height: 40),
               Container(
                padding: EdgeInsets.symmetric(vertical: 12),
                margin: EdgeInsets.symmetric(horizontal: 20),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Center(
                  child: Text("Login ", style: TextStyle(
                    color: Colors.blue,fontSize: 20,fontWeight: FontWeight.bold
                  ),),
                ),
               )
         
          
        
        ],
      ),
    );
  }
  LoginAdmin(){
    FirebaseFirestore.instance.collection('Admin').get().then((snapshot) {
        snapshot.docs.forEach((result) {
          if (result.data()['id'] !=username.text.trim()) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(
             "your id is not correct ",style: TextStyle(fontSize: 18), 
            )));

            
          }else if(result.data()['password']!= pass.text.trim()){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(
             "your id is not pass ",style: TextStyle(fontSize: 18), 
            )));
          }else{
            Route route =MaterialPageRoute(builder: (context)=> AddQuiz());
            Navigator.pushReplacement(context, route);
          }
        });
    });
   
    
  }
}