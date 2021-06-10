  import 'package:flutter/material.dart';
import 'package:ola_mundo/app_controller.dart';

class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState() {
   return HomePageState();
  }

  }

class HomePageState extends State<HomePage> {

  int counter = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [
          CustomSwitch(),
        ],
      ),
     
      body:  Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Contador: $counter"),
            CustomSwitch(),
          ],
        ),
      ),
         floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
           setState(() {
             counter++;
          }); 
        }
      ,),
    );

  }

}

class CustomSwitch extends StatelessWidget {
  const CustomSwitch({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Switch(
          value: AppController.instance.isDartTheme, 
        onChanged: (value){
          AppController.instance.changeTheme();
        },
        );
  }
}