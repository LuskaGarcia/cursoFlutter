import 'package:flutter/material.dart';
import 'package:ola_mundo/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

String email = '';
String password = '';

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                onChanged: (text){
                  email = text;
                },
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 10),
               TextField(
                 onChanged: (text){
                   password = text;
                 },
                 obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 15),
              ElevatedButton(onPressed: () {
                if(email == 'lucas@lucas.com' && password == '123'){
                  Navigator.of(context).push( //PODE COLOCAR PUSHREPLACEMENT
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                } else{
                  print('Incorreto');
                }
              }, 
              child: Text('Entrar')) 
              ],
            ),
        ),
          ),
      ),
        );
  }
}