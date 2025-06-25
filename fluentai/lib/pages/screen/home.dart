import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Fluent AI',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.person, color: Colors.white),
                    onPressed: () {
                      // Navigat e to settings page
                    },
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 35, 34, 37),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 10, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Daily Progress",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          fontSize: 16,
                        ),
                      ),

                      SizedBox(height: 10),

                      Text(
                        "Keep going Almost there for today",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 33, 12, 129),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),

                      onPressed: () {},
                      child: Text("Todays Plan"),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 33, 12, 129),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),

                      onPressed: () {},
                      child: Text("All Modules"),
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
              SizedBox(height: 20,),
                 buildplancard(
                '💬',
                "Greeting & Introduction",
                "10 -20 minutes Conversation",
              ),
              SizedBox(height: 10,),
              buildplancard(
                '📚',
                "Business Small Talk",
                "15 minutes vocabulary",
              ),
              SizedBox(height: 10,),
buildplancard(
                '🎯',
                "Practice Dialog",
                "5 minutes Conversation",
              ),


            ],
          ),
        ),
      ),
    );
  }
}

Widget buildplancard(String icon, String title, String description) {
  return Container(
    padding: EdgeInsets.all(10),
    height: 70,
    decoration: BoxDecoration(
      color: Color.fromARGB(255, 35, 34, 37),
      borderRadius: BorderRadius.circular(10),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
             Text(icon),
            SizedBox(width: 10),
        Column(
          children: [
            
            Text(title, style: TextStyle(fontSize: 16, color: Colors.white)),
            SizedBox(height: 5),
            Text(description, style: TextStyle(color: Colors.grey)),
          ],
        ),
    
          ],
        ),
       
        TextButton(
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            backgroundColor:Colors.blue , 
            foregroundColor: Colors.white
            
          ),
          onPressed: (){}, 
          child: Text("Start"))
    
      ],
    ),
  );
}
