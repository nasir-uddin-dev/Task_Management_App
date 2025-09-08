import 'package:flutter/material.dart';
import 'package:task_management_app/ui/widgets/background_screen.dart';

class MainNavBarHolderScreen extends StatefulWidget {
  const MainNavBarHolderScreen({super.key});

  @override
  State<MainNavBarHolderScreen> createState() => _MainNavBarHolderScreenState();
}

class _MainNavBarHolderScreenState extends State<MainNavBarHolderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundScreen(
          child: Column(
            children: [],
          )
      ),
    );
  }
}
