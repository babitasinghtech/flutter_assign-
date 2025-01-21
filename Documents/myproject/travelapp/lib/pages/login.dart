import 'package:flutter/material.dart';
import 'package:travelapp/pages/signup.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top image with rounded bottom-right corner
              ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(180),
                ),
                child: Image.asset(
                  "images/login.jpg",
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      height: 300,
                      color: Colors.grey,
                      child: Center(
                        child: Text(
                          "Image not found",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 10),
              // Login title
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Login",
                  style: TextStyle(color: Colors.white, fontSize: 35),
                ),
              ),
              SizedBox(height: 5),
              // Email label and input
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Email",
                  style: TextStyle(
                    color: Color.fromARGB(195, 233, 227, 227),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                padding: const EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color.fromARGB(190, 220, 211, 211),
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Enter your email",
                    hintStyle: TextStyle(
                      color: Colors.grey.shade400,
                    ),
                  ),
                  style: TextStyle(color: Colors.white),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              SizedBox(height: 10),
              // Password label and input
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Password",
                  style: TextStyle(
                    color: Color.fromARGB(195, 233, 227, 227),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                padding: const EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color.fromARGB(190, 220, 211, 211),
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Enter your password",
                    hintStyle: TextStyle(
                      color: Colors.grey.shade400,
                    ),
                  ),
                  style: TextStyle(color: Colors.white),
                  obscureText: true,
                ),
              ),
              SizedBox(height: 7),
              // Forget Password
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: GestureDetector(
                      onTap: () {},
                      child: Text(
                        "Forget Password?",
                        style: TextStyle(
                          color: Color.fromARGB(195, 233, 227, 227),
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              // Sign In Button
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 50,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color(0xfffc9502),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Text(
                      "Sign in",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "Or",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              // Google login
              GestureDetector(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 88, 97, 105),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  height: 40,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "images/search.png",
                        height: 30,
                        width: 30,
                        fit: BoxFit.cover,
                        color: Color(0xfffea720),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Log in with Google",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              // Sign Up redirection
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Signup()),
                      );
                    },
                    child: Text(
                      " Sign Up",
                      style: TextStyle(
                        color: const Color(0xfffea720),
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
