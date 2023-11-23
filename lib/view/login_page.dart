import 'package:apotek/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class LogInPage extends StatefulWidget {
  @override
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
final AuthController _authController = Get.put(AuthController());

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
void dispose() {
_emailController.dispose();
_passwordController.dispose();
super.dispose();
}


  void _showEmptyFieldDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Error'),
          content: Text('Username dan password tidak boleh kosong.'),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _navigateToDashboard(BuildContext context) {
    // Implementasi autentikasi pengguna (Contoh: username dan password)
    if (_emailController.text.isEmpty || _passwordController.text.isEmpty) {
      _showEmptyFieldDialog(context);
    } else {
      // Jika autentikasi berhasil, navigasikan pengguna ke DashboardPage
      Navigator.pushReplacementNamed(context, '/dashboard');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Register'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Username'),
            ),
            TextFormField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 20),

            Obx(() {
  return ElevatedButton(
    onPressed: _authController.isLoading.value
    ? null
    : () {
      _authController.registerUser(
        _emailController.text,
        _passwordController.text,
        );
         _navigateToDashboard(context);
},
child: _authController.isLoading.value
? CircularProgressIndicator()
: Text('Register'),
);

}),
],
),
),
);
}
}
//             ElevatedButton(
//               onPressed: () {
//                 _navigateToDashboard(context);
//               },
//               child: Text('Log In'),

//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
