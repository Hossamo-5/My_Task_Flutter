import 'package:flutter/material.dart';

void main() => runApp(const MyApp());


class MyApp extends StatelessWidget  {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      debugShowCheckedModeBanner: false,
      home:const HomeScreen() ,
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

        backgroundColor: Colors.white,

        appBar: AppBar(
          backgroundColor: Colors.blue,
          title:const Text("Home Screen",style: TextStyle(
            color: Colors.amberAccent,
            fontSize:20,
            fontWeight: FontWeight.w900,
          ),),
          centerTitle: true,
          leading: const Icon(
            Icons.arrow_back_ios_new,color: Colors.orangeAccent,),
          actions:  const [
            Icon(
              Icons.arrow_downward_sharp,
              color: Colors.orange,
              size: 30,
            )
          ],
      ),
      body: Center(
        //child: Text("0",style: TextStyle(fontSize: 30),),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center ,
          children:  [
            Image.network('https://images.unsplash.com/photo-1550439062-609e1531270e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
            height: 300,
              width: MediaQuery.of(context).size.width,
            ),
            const Text("My First App",style: TextStyle(fontSize: 30,color: Colors.grey),),

          ],
        )


        ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {print("Hello");},
          backgroundColor: Colors.deepPurple,
        child: const Icon(Icons.add,color: Colors.blue,size: 30,),

      ),
      );
  }
}

