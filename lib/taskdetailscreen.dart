import 'package:flutter/material.dart';

class TaskDetailScreen extends StatelessWidget {
  final String category;

  TaskDetailScreen({required this.category});

  final _descController = TextEditingController();
  final _dateController = TextEditingController();
  final _timeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: Text(category),
          backgroundColor: Color.fromRGBO(103, 80, 236, 1),
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
            Icon(Icons.location_pin,
                size: 40, color: Color.fromRGBO(103, 80, 236, 1)),
            SizedBox(height: 10),
            Text(
              'There are 1,092 people near your location who can help you!',
              textAlign: TextAlign.center,
              style: TextStyle(color: Color.fromRGBO(103, 80, 236, 1)),
            ),
            SizedBox(height: 24),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Description'),
                _buildInputField(_descController,
                    'Describe the things you need', Icons.mic_none),
              ],
            ),
            SizedBox(height: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Date'),
                _buildInputField(
                    _dateController,
                    'Specify the preferred date of completion',
                    Icons.calendar_today),
              ],
            ),
            SizedBox(height: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Time'),
                _buildInputField(
                    _timeController,
                    'Specify the preferred time of completion',
                    Icons.access_time),
              ],
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                // Handle submission logic
              },
              child: Text('Submit'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromRGBO(103, 80, 236, 1),
                foregroundColor: Colors.white,
                minimumSize: Size.fromHeight(50),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInputField(
      TextEditingController controller, String hint, IconData icon) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hint,
        suffixIcon: Icon(icon),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
      ),
    );
  }
}
