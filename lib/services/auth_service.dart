import 'package:firebase_auth/firebase_auth.dart';
import 'package:uwam_project/services/firestore_service.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirestoreService _firestoreService = FirestoreService();

  //Sign up method
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

  //Login Method
  Future<User?> login(String email, String password) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential.user;
    } catch (e) {
      print('Error during login: $e');
      return null;
    }
  }

  //Sign out method
  Future<void> signOut() async {
    await _auth.signOut();
  }
}
