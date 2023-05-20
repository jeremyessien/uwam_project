import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final CollectionReference _usersCollection = FirebaseFirestore.instance.collection('users');

  Future<void> createUserDocument(String userId, String firstName, String lastName) async {
    try {
      await _usersCollection.doc(userId).set({
        'firstName': firstName,
        'lastName': lastName,
      });
    } catch (e) {
      print('Error creating user document: $e');
    }
  }
}
