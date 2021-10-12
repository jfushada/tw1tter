import 'package:firebase_auth/firebase_auth.dart' as fa;

class FirebaseAuth {
  FirebaseAuth._();

  final fa.FirebaseAuth _auth = fa.FirebaseAuth.instance;

  fa.FirebaseAuth get auth => _auth;

  static FirebaseAuth get instance => FirebaseAuth._();

  Future<void> signOut() async {
    await _auth.signOut();
  }
}
