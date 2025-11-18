import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()
  );

}

class HobbyCard  extends StatelessWidget{
  final String title;
  final IconData icon;
  final Color backgroundColor;
  const HobbyCard({super.key,required this.title,required this.icon,Color color= Colors.blue}):backgroundColor=color;
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
                
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: backgroundColor,
                ),
                child: Center(
                  
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsetsGeometry.all(20),
                        child: Icon(icon , size: 48, color: Colors.amber),
                        
                      ),Center(child: Text(title),)
                    ],
                  ),
                ),
              );
    
  }
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: EdgeInsetsGeometry.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              // Container(
                
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(20),
              //     color: Colors.green,
              //   ),
              //   child: Center(
                  
              //     child: Row(
              //       children: [
              //         Padding(
              //           padding: EdgeInsetsGeometry.all(20),
              //           child: Icon(Icons.travel_explore, size: 48, color: Colors.amber),
                        
              //         ),Center(child: Text("traveling"),)
              //       ],
              //     ),
              //   ),
              // ),
              SizedBox(height: 100,),
            HobbyCard(title: "halo", icon: IconData(123),color: Colors.lime,),
            SizedBox(height: 100,),
            HobbyCard(title: "halo", icon: IconData(123),color: Colors.lime,),
            SizedBox(height: 100,),
            HobbyCard(title: "halo", icon: IconData(123),color: Colors.lime,),

            ],
          ),
        ),
      ),
    );
    
  }
  
}
