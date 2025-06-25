import 'package:flutter/material.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.black,
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text(
                    'Fluent AI',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 60,),
                  Center(
                    child: Text(
                      'Master Any',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 100, 131, 243),
                        fontSize: 38,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                  ),
                  Text(
                    'Language with AI ',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 100, 131, 243),
                      fontSize: 38,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 10,),
                  Text("Exprience personalized language learning powered by Advanced AI technology "   , style: TextStyle(color: const Color.fromARGB(255, 126, 125, 125) , fontSize: 16),),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: const Color.fromARGB(255, 83, 27, 186),
                      padding: EdgeInsets.symmetric(
                        horizontal: 80,
                        vertical: 16,
                      ),
                    ),
                    child: Text(
                      'Start Learning Now',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 16,),
                  TextButton(
                    style: TextButton.styleFrom(foregroundColor: Colors.purple), onPressed: () {},
                    child: Text(
                      'Watch Demo',
                      style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ),
                ],
              ),
            ),
            Card(
              color: Color(0xFF1A1A1A),
              margin: EdgeInsets.all(8.0),
              child: ListTile(
                leading: Text( '🌍', style: TextStyle(fontSize: 24)),
                title: Text(
                  'Language Selection',
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  'Choose from a variety of languages to start your learning journey',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
            Card(
              color: Color(0xFF1A1A1A),
              margin: EdgeInsets.all(8.0),
              child: ListTile(
                leading: Text('🤖', style: TextStyle(fontSize: 24)),
                title: Text('AI Tutor', style: TextStyle(color: Colors.white)),
                subtitle: Text(
                  'Personalized intelligent tutor that adapts to your needs',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
            Card(
              color: Color(0xFF1A1A1A),
              margin: EdgeInsets.all(8.0),
              child: ListTile(
                leading: Text('🔊', style: TextStyle(fontSize: 24)),
                title: Text(
                  'Speech Recognition',
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  'Get instant feedback on your pronunciation and speaking skills',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
            Card(
              color: Color(0xFF1A1A1A),
              margin: EdgeInsets.all(8.0),
              child: ListTile(
                leading: Text('🎭', style: TextStyle(fontSize: 24)),
                title: Text(
                  'Cultural Insights',
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  'Immerse yourself in culture while learning the language',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
            Container(
  decoration: BoxDecoration(
    image: DecorationImage(
      image: AssetImage('assets/images/onboarding.png'),
      fit: BoxFit.cover,
    ),
  ),
),
            Container(
              color: Colors.black,
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text(
                    'Start Your Language Journey Today',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: const Color.fromARGB(255, 4, 66, 181),
                      padding: EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 16,
                      ),
                    ),
                    child: Text(
                      'Get Started for Free',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    '© 2024 Fluent AI. All rights reserved.',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Privacy',
                          style: TextStyle(color: const Color.fromARGB(255, 6, 14, 161)),
                        ),
                      ),
                      Text(' | ', style: TextStyle(color: Colors.grey)),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Terms',
                           style: TextStyle(
                            color: const Color.fromARGB(255, 6, 14, 161),
                          ),
                        ),
                      ),
                      Text(' | ', style: TextStyle(color: Colors.grey)),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Contact',
                           style: TextStyle(
                            color: const Color.fromARGB(255, 6, 14, 161),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
