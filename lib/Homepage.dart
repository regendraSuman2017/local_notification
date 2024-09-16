import 'package:flutter/material.dart';
import 'package:local_notification/local_notification/show_notification.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Row(
            children: [],
          ),
          ElevatedButton.icon(
            onPressed: () {
              Future.delayed(Duration(seconds: 20)).then((s) {
                NotificationService().showNotification(
                  id: 1,
                  body: "Welcome",
                  payload: "now",
                  title: "New Notificatio",
                );
              });
            },
            label: Text("Show Notification"),
            icon: Icon(Icons.notifications),
          )
        ],
      ),
    );
  }
}
