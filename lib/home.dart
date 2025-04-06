import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aidly"),
      ),
      body: Container(
        child: Center(
          child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    //Hold logo, app name, description
                    padding: const EdgeInsets.all(16.0),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        //logo
                        //Image.asset(name)

                        //App name
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.0),
                          child: Text(
                            'Aidly',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),

                        //Description
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.0),
                          child: Text(
                            'Need a hand? Get help from kind volunteers. ',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),

                  //Assistance Button
                  Container(
                   padding: const EdgeInsets.all(16.0),
                   decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    border: Border.all(color:Color.fromRGBO(103, 80, 236, 1)
                   )
                   ),
                   child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const Edge
                      )
                    ],
                   ), 
                  ),

                  //Volunteer Button
                  Container(),
                ],
              )),
        ),
      ),
    );
  }
}
//import 'package:flutter/material.dart';
/*
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Container that holds the logo, app name, and description
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Logo
                    Image.asset('assets/logo.png', width: 100), // Adjust logo size

                    // App Name (Bold)
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                        'My App', // Replace with your app name
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    // Description
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                        'Welcome to Our App! Here is a short description.',
                        style: TextStyle(fontSize: 18),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),

              // Space between the box and buttons
              SizedBox(height: 30),

              // First button wrapped in a container
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Container(
                  width: 200, // Adjust the width of the container
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.blueAccent, // Background color for the container
                  ),
                  child: ElevatedButton.icon(
                    onPressed: () {
                      // Define what happens when the first button is pressed
                    },
                    icon: Icon(Icons.star, size: 30), // Icon for the button
                    label: Text(
                      'Button 1',
                      style: TextStyle(fontSize: 16), // Text style inside button
                    ),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 20), // Button padding
                      primary: Colors.transparent, // Make the button background transparent so the container color shows
                    ),
                  ),
                ),
              ),

              // Second button wrapped in a container
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Container(
                  width: 200, // Adjust the width of the container
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.greenAccent, // Background color for the container
                  ),
                  child: ElevatedButton.icon(
                    onPressed: () {
                      // Define what happens when the second button is pressed
                    },
                    icon: Icon(Icons.thumb_up, size: 30), // Icon for the button
                    label: Text(
                      'Button 2',
                      style: TextStyle(fontSize: 16), // Text style inside button
                    ),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 20), // Button padding
                      primary: Colors.transparent, // Make the button background transparent so the container color shows
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
