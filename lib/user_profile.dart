// user_profile.dart
import 'package:flutter/material.dart';

class UserProfile extends ChangeNotifier {
  String fullName = 'Joseph Obote';
  String slackUsername = 'Joseph Obote';
  String githubHandle = 'https://github.com/objhaz';
  String bio =
      'I am a highly driven Electrical/Electronic Engineer and System Designer, with vast knowledge spanning across various field of System Design including embedded system design using various microcontrollers. I primarily focus on design and programming of the digital system. I have gained recognition as an authentic team player through my enthusiasm to provide support and adapting within peers and seniors, showing eagerness to learn and develop new skills through strategic collaboration';

  void updateProfile({
    String? fullName,
    String? slackUsername,
    String? githubHandle,
    String? bio,
  }) {
    if (fullName != null) this.fullName = fullName;
    if (slackUsername != null) this.slackUsername = slackUsername;
    if (githubHandle != null) this.githubHandle = githubHandle;
    if (bio != null) this.bio = bio;

    notifyListeners();
  }
}
