import 'package:fluentai/pages/authpage/login.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentStep = 0;
  final int totalSteps = 4;

  void _navigateToNextStep() {
    if (currentStep < totalSteps - 1) {
      setState(() {
        currentStep++;
      });
    } else {
      Navigator.of(
        context,
      ).pushReplacement(MaterialPageRoute(builder: (context) => Loginscreen()));
    }
  }

  Widget _buildStepContent() {
    switch (currentStep) {
      case 0:
        return _buildLanguageSelectionStep();
      case 1:
        return _buildSecondStep();
      case 2:
        return _buildThirdStep();
     
      default:
        return Container();
    }
  }

  Widget _buildLanguageSelectionStep() {
    return Expanded(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Choose your language',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'What language would you like to master?',
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
            const SizedBox(height: 16),
            Column(
              children: [
                _buildLanguageCard('Spanish', '🇪🇸'),
                _buildLanguageCard('French', '🇫🇷'),
                _buildLanguageCard('Japanese', '🇯🇵'),
                _buildLanguageCard('Chinese', '🇨🇳'),
                _buildLanguageCard('Other Languages', '', isOther: true),
                _buildLanguageCard('German', '🇩🇪'),
                _buildLanguageCard('Italian', '🇮🇹'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSecondStep() {
    return Expanded(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Set your proficiency level',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'What is your current proficiency level?',
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
            const SizedBox(height: 16),
            Column(
             
               children: [
  _buildProficiencyCard('Beginner', 'Just starting out', '🍀'),
  _buildProficiencyCard('Intermediate', 'Know some basics', '📚'),
  _buildProficiencyCard('Advanced', 'Conversational', '🎯'),
  _buildProficiencyCard('Fluent', 'Near-native level', '⭐'),
],

              
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildThirdStep() {
    return Expanded(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'What is your goal?',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Select a goal to focus your learning',
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
            const SizedBox(height: 16),
            Column(
              children: [
                _buildGoalCard('Travel', 'Learn essential phrases' , '✈️'),
                _buildGoalCard('Work', 'Improve business communication' , '💼'),
                _buildGoalCard('School', 'Academic language skills' , '🎓'),
                _buildGoalCard('Culture', 'Understand media and literature' ,   '📖'),
              ],
            ),
          ],
        ),
      ),
    );
  }

 

  Widget _buildLanguageCard(
    String language,
    String flag, {
    bool isOther = false,
  }) {
    return Card(
      color: const Color(0xFF1A1A1A),
      margin: const EdgeInsets.only(bottom: 8.0),
      child: ListTile(
        leading: Text(flag, style: const TextStyle(fontSize: 24)),
        title: Text(
          language,
          style: const TextStyle(color: Colors.white, fontSize: 18),
        ),
        onTap: () {},
      ),
    );
  }

 Widget _buildProficiencyCard(String level, String description, String icon) {
  return Card(
    color: const Color(0xFF1A1A1A),
    margin: const EdgeInsets.only(bottom: 8.0),
    child: ListTile(
      leading: Text(
        icon,
        style: const TextStyle(fontSize: 24),
      ),
      title: Text(
        level,
        style: const TextStyle(color: Colors.white, fontSize: 18),
      ),
      subtitle: Text(
        description,
        style: const TextStyle(color: Colors.grey),
      ),
      onTap: () {},
    ),
  );
}


  Widget _buildGoalCard(String level, String description, String icon) {
  return Card(
    color: const Color(0xFF1A1A1A),
    margin: const EdgeInsets.only(bottom: 8.0),
    child: ListTile(
      leading: Text(
        icon,
        style: const TextStyle(fontSize: 24),
      ),
      title: Text(
        level,
        style: const TextStyle(color: Colors.white, fontSize: 18),
      ),
      subtitle: Text(
        description,
        style: const TextStyle(color: Colors.grey),
      ),
      onTap: () {},
    ),
  );
}


  Widget _buildTimeCard(String time, String description) {
    return Card(
      color: const Color(0xFF1A1A1A),
      margin: const EdgeInsets.only(bottom: 8.0),
      child: ListTile(
        title: Text(
          time,
          style: const TextStyle(color: Colors.white, fontSize: 18),
        ),
        subtitle: Text(description, style: const TextStyle(color: Colors.grey)),
        onTap: () {},
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              color: Colors.black,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Fluent AI',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: List.generate(totalSteps, (index) {
                              return Container(
                                width: 30,
                                height: 2,
                                color:
                                    index <= currentStep
                                        ? const Color.fromARGB(255, 80, 40, 200)
                                        : Colors.grey,
                              );
                            }),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            _buildStepContent(),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ElevatedButton(
                    onPressed: _navigateToNextStep,
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: const Color.fromARGB(255, 24, 5, 110),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 12,
                      ),
                    ),
                    child: Text(
                      currentStep == totalSteps - 1
                          ? 'Get Started'
                          : 'Continue',
                      style: const TextStyle(fontSize: 16, color: Colors.white),
                    ),
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
