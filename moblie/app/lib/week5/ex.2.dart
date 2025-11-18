import 'package:flutter/material.dart';
enum IconPos{left,right}
enum Buttontype{primary,secondary,disabled}

void main (){
  runApp(MyApp());
}
class CustomButton extends StatelessWidget{
  final String label;
  final IconData icon;
  final IconPos iconPosition;
  final Buttontype buttontype;
  const CustomButton({
    super.key,
    required this.label,
    required this.icon,
     this.iconPosition=IconPos.left,
     this.buttontype=Buttontype.primary
  });
  
  Color getColor(){
    switch (buttontype) {
      case Buttontype.primary:
      return Colors.blue;
      case Buttontype.disabled:
      return Colors.grey;
      case Buttontype.secondary:
      return Colors.green;
    }
    
  }
  



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final iconWidget = Padding(
      padding: const EdgeInsets.all(12),
      child: Icon(icon, size: 28, color: Colors.black),
    );

    final textWidget = Text(
      label,
      style: TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
    );
    return Container(
                margin: EdgeInsets.fromLTRB(0,20,0,20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: getColor(),
                ),
                child: Center(
                  
                  child: Row(
                   children: iconPosition == IconPos.left
              ? [iconWidget, textWidget]
              : [textWidget, iconWidget],
                  ),
                ),
              );
    
  }}
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
                          CustomButton(
              label: "Travelling",
              icon: Icons.favorite,
              iconPosition: IconPos.left,
              buttontype: Buttontype.primary,
            ),
            SizedBox(height: 20),
            CustomButton(
              label: "Skating",
              icon: Icons.audiotrack,
              iconPosition: IconPos.right,
              buttontype: Buttontype.secondary,
            ),
            SizedBox(height: 20),
            CustomButton(
              label: "Disabled",
              icon: Icons.block,
              buttontype: Buttontype.disabled,
            ),
            ],
          ),
        ),
      ),
    );
    
  }
  
}
