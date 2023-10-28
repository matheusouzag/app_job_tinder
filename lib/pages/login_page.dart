import 'package:flutter/material.dart';
import 'package:tinder_clone/pages/root_app.dart';

import '../theme/colors.dart';
import 'cadastro_page.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: login,
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Imagem
                Image.asset(
                  'assets/images/logo.jpg',
                  width: 200,
                  height: 200,
                ),
                SizedBox(height: 20),
                // Formulário de login
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'E-mail',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Senha',
                          border: OutlineInputBorder(),
                        ),
                        obscureText: true,
                      ),
                      SizedBox(height: 20),
                      // Botão de login
                      TextButton(
                        style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all(primary),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RootPage(),
                            ),
                          );
                        },
                        child: Text('Entrar'),
                      ),
                      TextButton(
                        style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all(primary),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CadastroScreen(),
                            ),
                          );
                        },
                        child: Text('Cadastrar'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}