// main.dart
import 'package:cvapp/edit_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'user_profile.dart'; // Import the UserProfile class

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => UserProfile(), // Initialize UserProfile
      child: MyProfileApp(),
    ),
  );
}

class MyProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Profile'),
        ),
        body: ProfileInfo(),
      ),
    );
  }
}

class ProfileInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var userProfile = Provider.of<UserProfile>(context);

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 16,
              ),
              Text(
                'Full Name: ${userProfile.fullName}',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Slack Username: ${userProfile.slackUsername}',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'GitHub Handle: ${userProfile.githubHandle}',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Bio: ${userProfile.bio}',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EditProfileScreen()),
                    );
                  },
                  child: Text('Edit'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
