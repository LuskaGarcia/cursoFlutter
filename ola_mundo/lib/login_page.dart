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

              Container(
                width: 100,
                height: 100,
                child: Image.network(
                  'https://www.imagenspng.com.br/wp-content/uploads/2020/10/among-us-black-png-01.png'),
              ),
              Container(height: 50),
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
                  Navigator.of(context).pushReplacementNamed('/home');
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