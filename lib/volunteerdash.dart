import 'package:flutter/material.dart';
import 'package:hci/chat.dart';

class Task {
  final String title;
  final String category;

  Task({required this.title, required this.category});
}

class Dashboard extends StatelessWidget {
  final List<String> selectedCategories;

  Dashboard({required this.selectedCategories});

  final List<Task> allTasks = [
    Task(title: 'Buy groceries', category: 'Grocery'),
    Task(title: 'Clean windows', category: 'Household Chores'),
    Task(title: 'Setup the printer', category: 'Tech Assistance'),
    Task(title: 'Pick up package at SM', category: 'Package Pickup'),
    Task(title: 'Organize kitchen', category: 'Household Chores'),
  ];

  @override
  Widget build(BuildContext context) {
    final filteredTasks = allTasks
        .where((task) => selectedCategories.contains(task.category))
        .toList();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Color.fromRGBO(103, 80, 236, 1),
          title: Text('Dashboard'),
          titleTextStyle: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.pop(context);
            },
          )),
      body: filteredTasks.isEmpty
          ? Center(child: Text('No tasks available for selected categories.'))
          : ListView.builder(
              itemCount: filteredTasks.length,
              itemBuilder: (context, index) {
                final task = filteredTasks[index];

                final iconMap = {
                  'Grocery': Icons.local_grocery_store,
                  'Household Chores': Icons.cleaning_services,
                  'Tech Assistance': Icons.devices,
                  'Package Pickup': Icons.local_shipping,
                };

                return Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  elevation: 3,
                  margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Chat(
                            taskTitle: task.title,
                            creatorName: "Lola Amour",
                          ),
                        ),
                      );
                    },
                    borderRadius: BorderRadius.circular(16),
                    child: Container(
                      padding: EdgeInsets.all(16),
                      height: 100,
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(103, 80, 236, 0.1),
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              iconMap[task.category] ?? Icons.help_outline,
                              color: Color.fromRGBO(103, 80, 236, 1),
                              size: 32,
                            ),
                          ),
                          SizedBox(width: 16),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  task.title,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  task.category,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey[700],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Icon(Icons.arrow_forward_ios,
                              size: 16, color: Colors.grey),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
