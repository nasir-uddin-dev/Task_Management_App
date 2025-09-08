
import 'package:flutter/material.dart';
import 'package:task_management_app/ui/screen/login_screen.dart';
import 'package:task_management_app/ui/widgets/background_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundScreen(
          child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 50),
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              SizedBox(
                height: 150,
              ),
              Text(
                "Join With Us",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(height: 10,),
              TextFormField(
                controller: _emailController,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  hintText: "Email",
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _firstNameController,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  hintText: "First Name",
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _lastNameController,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  hintText: "Last Name",
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _mobileController,
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  hintText: "Mobile",
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _passwordController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Password",
                ),
              ),
              SizedBox(
                height: 30,
              ),
              FilledButton(
                  onPressed: () =>_onTapConfirmButton(),
                  child: Icon(
                    Icons.arrow_circle_right_outlined,
                    size: 40,
                  )),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Have account ?'),
                  TextButton(onPressed: () {}, child: Text("Sign In"))
                ],
              )
            ],
          ),
        ),
      )),
    );
  }

  void _onTapConfirmButton() {
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
        (predicate) => false);
  }
}
