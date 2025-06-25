import 'package:flutter/material.dart';


class PersonalizedPlanScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.only(top:60),

        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Your personalized plan is ready!',
               style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'How much time can you dedicate daily?',
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
              SizedBox(height: 16),
              _buildPlanCard('5 minutes per day', '⚡ Quick Practice'),
              _buildPlanCard('15 minutes per day', '⏳ Regular Practice'),
              _buildPlanCard('30 minutes per day', '🎯 Intensive Practice'),
              SizedBox(height: 16),
              Text(
                'Your learning path',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              _buildLearningStep('1', 'Master basic conversation skills'),
              _buildLearningStep('2', 'Build professional vocabulary'),
              _buildLearningStep('3', 'Practice with AI'),
              SizedBox(height: 16),
              Center(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 60, 35, 199),
                    padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Start Learning',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPlanCard(String time, String label) {
    return Card(
      color: Color(0xFF1A1A1A),
      margin: EdgeInsets.only(bottom: 8.0),
      child: ListTile(
        title: Text(time, style: TextStyle(color: Colors.white, fontSize: 18)),
        subtitle: Text(
          label,
          style: TextStyle(color: Colors.grey, fontSize: 14),
        ),
        onTap: () {},
      ),
    );
  }

  Widget _buildLearningStep(String number, String description) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            number,
            style: TextStyle(
              color: Colors.purple,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(width: 8),
          Expanded(
            child: Text(
              description,
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
