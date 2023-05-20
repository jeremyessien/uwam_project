import 'package:firebase_auth/firebase_auth.dart';

import 'firestore_service.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirestoreService _firestoreService = FirestoreService();

  Future<User?> signUp(
      String email, String password, String firstName, String lastName) async {
    try {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      User? user = userCredential.user;
      if (user != null) {
        await _firestoreService.createUserDocument(
            user.uid, firstName, lastName);
      }
      return userCredential.user;
    } catch (e) {
      print('Error during user registration: $e');
      return null;
    }
  }
}
