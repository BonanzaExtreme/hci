import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hci/home.dart';
import 'package:hci/taskdetailscreen.dart';
import 'package:hci/volunteerdash.dart';

class Volunteercategory extends StatefulWidget {
  @override
  _VolunteercategoryState createState() => _VolunteercategoryState();
}

class _VolunteercategoryState extends State<Volunteercategory> {
  Set<String> selectedCategories = {};

  final List<Map<String, dynamic>> categories = [
    {'name': 'Grocery', 'icon': Icons.local_grocery_store},
    {'name': 'Household Chores', 'icon': Icons.cleaning_services},
    {'name': 'Tech Assistance', 'icon': Icons.devices},
    {'name': 'Package Pickup', 'icon': Icons.local_shipping},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            backgroundColor: Color.fromRGBO(103, 80, 236, 1),
            title: Text("Categories"),
            titleTextStyle: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {
                Navigator.pop(context);
              },
            )),
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text('Please select all categories you want to help with:'),
                SizedBox(height: 16),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                    childAspectRatio: 1.2,
                    physics: NeverScrollableScrollPhysics(),
                    children: categories.map((category) {
                      final isSelected =
                          selectedCategories.contains(category['name']);

                      return OutlinedButton(
                        onPressed: () {
                          setState(() {
                            if (selectedCategories.contains(category['name'])) {
                              selectedCategories.remove(category['name']);
                            } else {
                              selectedCategories.add(category['name']);
                            }
                          });
                        },
                        style: OutlinedButton.styleFrom(
                          backgroundColor: isSelected
                              ? Color.fromRGBO(103, 80, 236, 1)
                              : Colors.white,
                          foregroundColor: isSelected
                              ? Colors.white
                              : Color.fromRGBO(103, 80, 236, 1),
                          side: BorderSide(
                              color: Color.fromRGBO(103, 80, 236, 1)),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(category['icon'], size: 30),
                            SizedBox(height: 8),
                            Text(
                              category['name'],
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 14),
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                ),
                SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: selectedCategories.isNotEmpty
                        ? () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Dashboard(
                                    selectedCategories:
                                        selectedCategories.toList()),
                              ),
                            );
                          }
                        : null,
                    child: Text('Next'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(103, 80, 236, 1),
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(vertical: 16),
                    ),
                  ),
                ),
              ],
            )));
  }
}
