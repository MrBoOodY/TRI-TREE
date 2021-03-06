import 'dart:convert';

class User {
  String? userType;
  String? displayName;
  String? email;
  String? uid;
  double? availablePoints;
  String? deviceToken;
  User({
    this.userType,
    this.displayName,
    this.email,
    this.uid,
    this.availablePoints,
    this.deviceToken,
  });

  User copyWith({
    String? userType,
    String? displayName,
    String? email,
    String? uid,
    double? availablePoints,
    String? deviceToken,
  }) {
    return User(
      userType: userType ?? this.userType,
      displayName: displayName ?? this.displayName,
      email: email ?? this.email,
      uid: uid ?? this.uid,
      availablePoints: availablePoints ?? this.availablePoints,
      deviceToken: deviceToken ?? this.deviceToken,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'userType': userType,
      'displayName': displayName,
      'email': email,
      'uid': uid,
      'availablePoints': availablePoints,
      'deviceToken': deviceToken,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      userType: map['userType'],
      displayName: map['displayName'],
      email: map['email'],
      uid: map['uid'],
      availablePoints: map['availablePoints']?.toDouble(),
      deviceToken: map['deviceToken'],
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));

  @override
  String toString() {
    return 'User(userType: $userType, displayName: $displayName, email: $email, uid: $uid, availablePoints: $availablePoints, deviceToken: $deviceToken)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is User &&
        other.userType == userType &&
        other.displayName == displayName &&
        other.email == email &&
        other.uid == uid &&
        other.availablePoints == availablePoints &&
        other.deviceToken == deviceToken;
  }

  @override
  int get hashCode {
    return userType.hashCode ^
        displayName.hashCode ^
        email.hashCode ^
        uid.hashCode ^
        availablePoints.hashCode ^
        deviceToken.hashCode;
  }
}
