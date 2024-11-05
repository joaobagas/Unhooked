class Firebase {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Method for signing up users
  Future<User?> signUpWithEmail(String email, String password) async {
    try {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      User? user = userCredential.user;
      if (user != null) {
        // Save user data to Firestore
        await _firestore.collection('users').doc(user.uid).set({
          'email': email,
          'createdAt': DateTime.now(),
        });
      }
      return user;
    } catch (e) {
      print("Error signing up: $e");
      return null;
    }
  }

  // Method for logging in users
  Future<User?> loginWithEmail(String email, String password) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential.user;
    } catch (e) {
      print("Error logging in: $e");
      return null;
    }
  }

  // Method for logging out
  Future<void> signOut() async {
    await _auth.signOut();
  }

  // Method to get the current user
  User? getCurrentUser() {
    return _auth.currentUser;
  }

  // Method to save additional data to Firestore
  Future<void> saveUserData(String userId, Map<String, dynamic> data) async {
    try {
      await _firestore.collection('users').doc(userId).update(data);
    } catch (e) {
      print("Error saving user data: $e");
    }
  }
}
