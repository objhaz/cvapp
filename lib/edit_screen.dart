// edit_profile.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'user_profile.dart';

class EditProfileScreen extends StatefulWidget {
  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController slackUsernameController = TextEditingController();
  TextEditingController githubHandleController = TextEditingController();
  TextEditingController bioController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var userProfile = Provider.of<UserProfile>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: fullNameController,
              decoration: InputDecoration(labelText: 'Full Name'),
            ),
            TextField(
              controller: slackUsernameController,
              decoration: InputDecoration(labelText: 'Slack Username'),
            ),
            TextField(
              controller: githubHandleController,
              decoration: InputDecoration(labelText: 'GitHub Handle'),
            ),
            TextField(
              controller: bioController,
              decoration: InputDecoration(labelText: 'Bio'),
              maxLines: 4,
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                userProfile.updateProfile(
                  fullName: fullNameController.text,
                  slackUsername: slackUsernameController.text,
                  githubHandle: githubHandleController.text,
                  bio: bioController.text,
                );
                Navigator.of(context).pop(); // Return to the main screen
              },
              child: Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}
