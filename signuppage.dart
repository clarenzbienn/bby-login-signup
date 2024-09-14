// ignore_for_file: prefer_const_constructors

import 'package:busbuddy/components/signup_components/confirmpsw_signupbtn.dart';
import 'package:busbuddy/components/signup_components/email_signupbtn%20copy.dart';
import 'package:busbuddy/components/signup_components/psw_signupbtn.dart';
import 'package:busbuddy/components/signup_components/signup_btn.dart';
import 'package:busbuddy/components/signup_components/usn_signupbtn.dart';
//import 'package:busbuddy/pages/landingpage.dart';
import 'package:busbuddy/loginpage.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  void signUserUp() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('lib/bby_icons/bg.png'), 
          fit: BoxFit.cover,
        ),
      ),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // logo
              Padding(
                padding: const EdgeInsets.only(top: 50, bottom: 50),
                child: Image.asset(
                  'lib/bby_icons/logo_white2.png',
                  height: 50,
                ),
              ),

              //white container
              Container(
                width: double.infinity,
                height: 535, 
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0), 
                    topRight: Radius.circular(30.0),
                  ),
                ),


              //Welcome back text
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Center(
                      child: Text(
                        'WELCOME!',
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 30,
                          fontFamily: 'GabrielSans',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    const SizedBox(height: 0),
                    
                    const Text(
                      'Register your account.',
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 13,
                        fontFamily: 'GabrielSans',
                      ),
                    ),

                    const SizedBox(height: 20),

                    //textfield username
                    const UsernameTextFieldSignUp(),

                    const SizedBox(height: 5),

                    //textfield email
                    const EmailTextFieldSignUp(),

                    const SizedBox(height: 5),

                    //textfield password
                    const PasswordTextFieldSignUp(),

                    const SizedBox(height: 5),

                    //textfield confirm password
                    const ConfirmPasswordTextFieldSignUp(),

                    const SizedBox(height: 20),

                    //sign in button
                    SignUpButton(
                      onTap: signUserUp,
                    ),


                    const SizedBox(height: 10),

                    //not a member
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      
                      children: [
                        Text(
                          'Not a member?',
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 13,
                            ),
                        ),
                        const SizedBox(width: 4,),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => LoginPage()),
                            );
                          },
                        child: const Text(
                          'Log in',
                          style: TextStyle(
                            color: Color.fromARGB(255, 14, 38, 64),
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        ),
                    ],
                    )




                  ],
                ),












              /*child: Column(
                  mainAxisAlignment: MainAxisAlignment.center, // Center items vertically
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                      },
                      style: OutlinedButton.styleFrom(
                        foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                        side: BorderSide(color: const Color.fromARGB(255, 255, 255, 255), width: 1.5), // Border color and width
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0), // Oblong shape
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 150.0, vertical: 12.0), // Padding to make it long
                        backgroundColor: Colors.transparent, // Transparent center
                      ),
                      child: Text('BACKKKK'),
                    ),
                    SizedBox(height: 20), // Space between button and bottom of the box
                  ],
                ),*/
              






                
              ),
            ],
          ),
        ),
      ),
    ),
    );
  }
}