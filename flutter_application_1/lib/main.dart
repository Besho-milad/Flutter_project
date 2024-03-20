import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login Screen App',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'codeplayon',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 20),
            LoginForm(),
          ],
        ),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: TextFormField(
              controller: _usernameController,
              decoration: InputDecoration(
                hintText: 'Username',
                border: InputBorder.none,
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: TextFormField(
              controller: _passwordController,
              decoration: InputDecoration(
                hintText: 'Password',
                border: InputBorder.none,
              ),
              obscureText: true,
            ),
          ),
          SizedBox(height: 20.0),
          TextButton(
            onPressed: () {
              // Add forget password logic here
            },
            child: Text(
              'Forget Password',
              style: TextStyle(color: Colors.blue),
            ),
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
              // Implement login functionality here
              String username = _usernameController.text;
              String password = _passwordController.text;
              // For demonstration, print username and password
              print('Username: $username\nPassword: $password');
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blue),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(color: Colors.black),
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                'Login',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Don't have an account? ",
                style: TextStyle(color: Colors.black),
              ),
              TextButton(
                onPressed: () {
                  // Add sign up navigation here
                },
                child: Text(
                  'Sign up',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
