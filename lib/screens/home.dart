import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
double getHeight(context,double i)
{
  double result = MediaQuery.of(context).size.height*i;
  return result;
}
double getWidth(context,double i)
{
  double result = MediaQuery.of(context).size.width*i;
  return result;
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Hello,User",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 25,)),
                      ElevatedButton(onPressed: (){
                        // logic to add transiction


                      },
                          child: Center(child: Row(children: [Icon(Icons.add),Text("ADD")],)),
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                        backgroundColor: Colors.deepOrange[300],
                        minimumSize: Size(100, 50)),
                      )
                    ],
                  ),
                ),
                Center(
                  child: Container(
                    color: Colors.grey,
                    height: getHeight(context, 0.2),
                    width: getWidth(context, 0.8),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
