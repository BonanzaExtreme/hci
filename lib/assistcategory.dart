import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hci/home.dart';
import 'package:hci/taskdetailscreen.dart';

class Assistcategory extends StatefulWidget {
  @override
  _AssistcategoryState createState() => _AssistcategoryState();
}

class _AssistcategoryState extends State<Assistcategory> {
  String? selectedCategory;

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
                Text('Please select the kind of help you need:'),
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
                      final isSelected = selectedCategory == category['name'];

                      return OutlinedButton(
                        onPressed: () {
                          setState(() {
                            selectedCategory = category['name'];
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
                    onPressed: selectedCategory != null
                        ? () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => TaskDetailScreen(
                                    category: selectedCategory!),
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
