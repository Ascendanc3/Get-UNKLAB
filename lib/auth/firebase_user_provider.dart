import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class GetUNKLABFirebaseUser {
  GetUNKLABFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

GetUNKLABFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<GetUNKLABFirebaseUser> getUNKLABFirebaseUserStream() => FirebaseAuth
    .instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<GetUNKLABFirebaseUser>(
        (user) => currentUser = GetUNKLABFirebaseUser(user));
