import 'package:flutter/material.dart';

class MainNavBarHolderScreen extends StatefulWidget {
  const MainNavBarHolderScreen({super.key});

  @override
  State<MainNavBarHolderScreen> createState() => _MainNavBarHolderScreenState();
}

class _MainNavBarHolderScreenState extends State<MainNavBarHolderScreen> {
  int _selectedIndex = 0; //private variable_name
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        bottomNavigationBar: NavigationBar(
            //Creates a Material 3 Navigation Bar component.
            backgroundColor: Colors.white,
            selectedIndex: _selectedIndex, //assign _selectedIndex
            onDestinationSelected: (int index) {
              //void Function(function parameter integer)
              setState(() {
                //rebuild UI
                _selectedIndex = index;
              });
            },
            destinations: [
              NavigationDestination(
                icon: Icon(Icons.new_label,),
                label: "New Task",

              ),
              NavigationDestination(
                  icon: Icon(Icons.refresh), label: "Progress"),
              NavigationDestination(
                  icon: Icon(Icons.cancel), label: "Cancelled"),
              NavigationDestination(icon: Icon(Icons.done), label: "Completed"),
            ]));
  }
}
