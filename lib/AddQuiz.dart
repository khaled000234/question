import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:question/databasse.dart';
import 'package:random_string/random_string.dart';

class AddQuiz extends StatefulWidget {
  const AddQuiz({super.key});

  @override
  State<AddQuiz> createState() => _AddQuizState();
}

class _AddQuizState extends State<AddQuiz> {
  final ImagePicker _picker=ImagePicker();
  Future getImage()async{
    //var image=await _picker.pickImage(source: ImageSource.gallery);
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    selectedImage=File(image!.path);
    setState(() {
      
    });
  }
  uploadItem()async{
if(selectedImage!=null&& option1.text!=""&& option2.text!=""&&option3.text!=""&&option4.text!=""){
String addId=randomAlpha(10);
Reference firebaseStorageRef=FirebaseStorage.instance.ref().child("blogzImage").child(addId);
final UploadTask task = firebaseStorageRef.putFile(selectedImage!);
var downloadUrl =await (await task).ref.getDownloadURL();
Map<String ,dynamic>AddQuiz={
"image":downloadUrl,
"option1":option1.text,
"option2":option2.text,
"option3":option3.text,
"option4":option4.text,
"corectanswer":corectanswer.text,
};
await DatabaseMethods().addQuizCategory(AddQuiz, value!).then((value) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    backgroundColor: Colors.orange,
    content: Text("Quiz has been added successfuly "
  ,style: TextStyle(fontSize: 18),),));
} );
}
  }
  File? selectedImage;
  
  String? value;
  final List<String> Qezitems=[
    'animeal',
  'anime',
  'drive'
  ];
    TextEditingController option1=new  TextEditingController();
    TextEditingController option2=new  TextEditingController();
    TextEditingController option3=new  TextEditingController();
    TextEditingController option4=new  TextEditingController();
    TextEditingController corectanswer=new  TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar
      (
        title: Text("Add Quez"),
      ),
      body: SingleChildScrollView(
        child: Container(
        
          child: Column( crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          Text("upload  the quiz",),SizedBox(height: 20,), selectedImage == null?
          GestureDetector(
            onTap: (){
              getImage();
            },
            child: Center(
              child: Material(
                elevation: 4,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  width: 150,
                  height: 150,
                  decoration:BoxDecoration(border: Border.all(color: Colors.black,
                  width: 1.5)
                  ,borderRadius: BorderRadius.circular(20)) ,
                ),
              ),
            ),
          ):Center(
              child: Material(
                elevation: 4,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  width: 150,
                  height: 150,
                  decoration:BoxDecoration(border: Border.all(color: Colors.black,
                  width: 1.5)
                  ,borderRadius: BorderRadius.circular(20)) ,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.file(
                      selectedImage!,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          Text("option 1"),
          SizedBox(height: 20,),
          Container(
            padding:EdgeInsets.symmetric(horizontal: 20),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,borderRadius: BorderRadius.circular(10)),
              child: TextField(
                controller: option1,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Enter OPtion",
                  hintStyle: TextStyle(color: Colors.black
                  ,fontSize: 20,
                  fontWeight:FontWeight.bold
                   )
                ),
              ),
          ),
                
          SizedBox(height: 20,),Text("option 2"),
            Container(
            padding:EdgeInsets.symmetric(horizontal: 20),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,borderRadius: BorderRadius.circular(10)),
              child: TextField(
                controller: option2,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Enter OPtion2",
                  hintStyle: TextStyle(color: Colors.black
                  ,fontSize: 20,
                  fontWeight:FontWeight.bold
                   )
                ),
              ),
          ),
          SizedBox(height: 20,),Text("option 3"),
             Container(
            padding:EdgeInsets.symmetric(horizontal: 20),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,borderRadius: BorderRadius.circular(10)),
              child: TextField(
                controller: option3,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Enter OPtion3",
                  hintStyle: TextStyle(color: Colors.black
                  ,fontSize: 20,
                  fontWeight:FontWeight.bold
                   )
                ),
              ),
          ),SizedBox(height: 20,),Text("option 4"),
            Container(
            padding:EdgeInsets.symmetric(horizontal: 20),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,borderRadius: BorderRadius.circular(10)),
              child: TextField(
                controller: option4,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Enter OPtion4",
                  hintStyle: TextStyle(color: Colors.black
                  ,fontSize: 20,
                  fontWeight:FontWeight.bold
                   )
                ),
              ),
          ),
          SizedBox(height: 20,),Text("corect"),
            Container(
            padding:EdgeInsets.symmetric(horizontal: 20),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,borderRadius: BorderRadius.circular(10)),
              child: TextField(
                controller: corectanswer,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "corectanswer",
                  hintStyle: TextStyle(color: Colors.black
                  ,fontSize: 20,
                  fontWeight:FontWeight.bold
                   )
                ),
              ),
          ),
          SizedBox(height:20 ,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,borderRadius: BorderRadius.circular(10)
            ),
            child: DropdownButtonHideUnderline(child:DropdownButton<String>(items:Qezitems.map((item) =>DropdownMenuItem(value: item,child:Text(item,style:TextStyle(fontSize: 18,color:Colors.black )
             ,) ) ).toList(),onChanged: ((value)=>setState(() {
               this.value=value;
             })),
             dropdownColor:Colors.white ,
             hint: Text("select Category"),
             iconSize: 36,
             icon: Icon(Icons.arrow_circle_down_sharp,color: Colors.black,),
             value: value,

             ),
             
              ),

          ),
          SizedBox(height: 30,),
          GestureDetector(
            onTap:(){
              uploadItem();
            } ,
            child: Center(child: Material(
              elevation: 5.0,
              borderRadius:BorderRadius.circular(10),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 5),
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.black,borderRadius: BorderRadius.circular(10),
                ),
                child: Center(child: Text("Add ",style: TextStyle(color: Colors.white),),),
              ),
            ),),
          )
        ],),
        ),
      ),
    );
  }
}