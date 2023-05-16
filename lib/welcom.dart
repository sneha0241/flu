import 'package:flu/newpage.dart';
import 'package:flutter/material.dart';
import 'authentication.dart';
class back extends StatefulWidget {
  const back({Key? key}) : super(key: key);

  @override
  State<back> createState() => _backState();
}

class _backState extends State<back> {
  final TextEditingController email=TextEditingController();
  final TextEditingController password=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('pic/fi.jpg'),radius:50,
              ),
              SizedBox(height: 30,),
              Text('!Welcome back',style:TextStyle(color:Colors.black,),textDirection: TextDirection.rtl,),
              SizedBox(height: 40,),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: Icon(Icons.mail),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: 'Email',
                ),
              ),
              SizedBox(height: 30),
              TextField(obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: 'Password',
                ),
              ),
              SizedBox(height: 30),
              TextButton(
                  style:
                  TextButton.styleFrom(backgroundColor: Colors.lightBlueAccent),
                 onPressed: () { AuthenticationHelper()
        .signin(email: email.text, password: password.text)
        .then((result){
    if(result==null){
    Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>exit()));
    }else{
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(result,
    style: TextStyle(fontSize: 16),
    ),
    ));
    }
    });
                 },
                  child: Center(child: Text('Login'))),
              SizedBox(height:30),
              Row(
                children: [
                  Text('New here?'),
                  Text('Get Registered Now!!',style: TextStyle(color:Colors.lightBlue),),
                ],
              ),
            ],
          ),
        ));
  }
}
