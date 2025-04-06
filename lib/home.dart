import 'package:flutter/material.dart';
import 'package:hci/volunteercategory.dart';
import 'route.dart';
import 'assistcategory.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Aidly"),
        titleTextStyle: TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        backgroundColor: Color.fromRGBO(103, 80, 236, 1),
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
                        Icon(
                          Icons.people,
                          color: Color.fromRGBO(103, 80, 236, 1),
                          size: 100.0,
                        ),

                        //App name
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.0),
                          child: Text(
                            'Aidly',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(103, 80, 236, 1),
                            ),
                          ),
                        ),

                        //Description

                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.0),
                          child: Text(
                              'Need a hand? Get help from kind volunteers. ',
                              style: TextStyle(
                                fontSize: 20,
                              )),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: 500,
                    height: 150.0,
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.of(context)
                            .push(RouteManager.createRoute((Assistcategory())));
                      },
                      style: OutlinedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        side: BorderSide(
                          color: Color.fromRGBO(103, 80, 236, 1),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.assistant_photo, size: 40),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Text(
                              'I need Assistance',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromRGBO(103, 80, 236, 1)),
                            ),
                          ),
                          Text(
                            'Request help from nearby volunteers for everyday tasks.',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color.fromRGBO(103, 80, 236, 1)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: 500,
                    height: 150.0,
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            RouteManager.createRoute((Volunteercategory())));
                      },
                      style: OutlinedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        side: BorderSide(
                          color: Color.fromRGBO(103, 80, 236, 1),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.person, size: 40),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Text(
                              'Im a volunteer',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromRGBO(103, 80, 236, 1)),
                            ),
                          ),
                          Text(
                            'Lend a hand to those in need and make a difference.',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color.fromRGBO(103, 80, 236, 1)),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
