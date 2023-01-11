import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main()
{
  runApp(MaterialApp(
     debugShowCheckedModeBanner: false,
     home: Scaffold(
     //-------------------1
      body: Container(
        decoration: BoxDecoration(
          gradient:LinearGradient(colors:[
            Color(0xFFFFDCE7),
            Color.fromARGB(255, 62, 100, 174)
          ])
        ),
        //-------------------2
        child:signup(),
      ),
     ),
  ),);
}

class signup extends StatelessWidget {
  const signup({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //-------------------3
    return ListView(
      children: [
        //-------------------4
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top:40.0),
            child: Text('Khabar-billash', 
            style: TextStyle(fontSize: 35,fontWeight:
             FontWeight.bold,fontFamily:'Pacifico',color: Color(0xFF674747)),
            ),
          ),
        ),
        //-------------------5
        Padding(
          padding: const EdgeInsets.only(left:181.0),
          child: Text('Food Delivery App',
          style: TextStyle(
            fontWeight: FontWeight.w900,
            color:Color(0xFFc8feff)),),
        ),
        //-------------------6
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Color.fromARGB(255, 255, 254, 253),
              prefixIcon: Padding(
                padding: const EdgeInsets.only(left:15),
                child: Icon(Icons.person_outline,color: Color.fromARGB(255, 85, 80, 243),),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30)
              ),
              hintText: 'User name'
            ),
          ),
        ),
        //-------------------7
      Padding(
          padding: const EdgeInsets.all(15.0),
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Color.fromARGB(255, 255, 254, 253),
              prefixIcon: Padding(
                padding: const EdgeInsets.only(left:15),
                child: Icon(Icons.email_outlined,color: Color.fromARGB(255, 85, 80, 243),),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30)
              ),
              hintText: 'Email'
            ),
          ),
        ),
    //-------------------8
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              filled: true,
              fillColor: Color.fromARGB(255, 255, 254, 253),
              prefixIcon: Padding(
                padding: const EdgeInsets.only(left:15),
                child: Icon(Icons.lock_outline,color: Color.fromARGB(255, 85, 80, 243),),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30)
              ),
              hintText: 'Password'
            ),
          ),
        ),
        //-------------------9
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              filled: true,
              fillColor: Color.fromARGB(255, 255, 254, 253),
              prefixIcon: Padding(
                padding: const EdgeInsets.only(left:15),
                child: Icon(Icons.lock_outlined,color: Color.fromARGB(255, 85, 80, 243),),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30)
              ),
              hintText: 'Confirm Password',
            ),
          ),
        ),
        //-------------------10
        Padding(
          padding: const EdgeInsets.only(
            left:200,right:20),
          child: ElevatedButton(
            
            style:ElevatedButton.styleFrom(shape: StadiumBorder()),
            onPressed: () {}, 
            child:Text('Sign Up')),
        )
      ],
    );
  }
}