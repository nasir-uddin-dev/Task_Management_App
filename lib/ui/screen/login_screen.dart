import 'package:flutter/material.dart';
import 'package:task_management_app/ui/screen/forget_password_verify_email_screen.dart';
import 'package:task_management_app/ui/screen/main_nav_bar_holder_screen.dart';
import 'package:task_management_app/ui/screen/signUp_screen.dart';
import 'package:task_management_app/ui/widgets/background_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 150,
              ),
              Text(
                'Get Started With',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  hintText: 'Email',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _passwordController,
                keyboardType: TextInputType.number,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                ),
              ),
              SizedBox(
                height: 30,
              ),
              FilledButton(
                  onPressed: () => _onTapLoginScreen(),
                  child: Icon(
                    Icons.arrow_circle_right_outlined,
                    size: 40,
                  )),
              SizedBox(
                height: 30,
              ),
              Center(
                child: TextButton(
                    onPressed: () => _onTapForgetPasswordScreen(),
                    child: Text(
                      'Forget Password ?',
                      style: TextStyle(color: Colors.grey[600]),
                    )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account ?"),
                  TextButton(
                      onPressed: () => _onTapSignUpButton(),
                      child: Text('Sign Up'))
                ],
              )
            ],
          ),
        ),
      )),
    );
  }

  void _onTapSignUpButton() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SignupScreen()),
    );
  }

  void _onTapForgetPasswordScreen() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ForgetPasswordVerifyEmailScreen()));
  }

  void _onTapLoginScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MainNavBarHolderScreen()),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
