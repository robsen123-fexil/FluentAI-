import 'package:flutter/material.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Card(
              color: Color(0xFF1A1A1A),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Fluent AI',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 16),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle: TextStyle(color: Colors.grey),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        // enabledBorder: (
                        //   borderSide: BorderSide(color: Colors.grey),
                        // ), 
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: const Color.fromARGB(255, 255, 255, 255)),
                        ),
                      ),
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 16),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: TextStyle(color: Colors.grey),
                        enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: const Color.fromARGB(255, 255, 255, 255)),
                        ),
                      ),
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(

                        
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        backgroundColor: const Color.fromARGB(255, 0, 13, 155),
                        padding: EdgeInsets.symmetric(horizontal: 92, vertical: 12),
                      ),
                      child: Text(
                        'Sign in',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                    SizedBox(height: 16),
                    TextButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:[
                        Text(
                          'Don\'t have an account? ',
                          style: TextStyle(
                            color: const Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            // Navigate to registration page
                          },
                          child: Text(
                            'Sign up',
                            style: TextStyle(
                              color: const Color.fromARGB(255, 0, 13, 155),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ] 
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
  }
}
