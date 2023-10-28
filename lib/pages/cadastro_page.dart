import 'package:flutter/material.dart';
import 'package:tinder_clone/pages/login_page.dart';

import '../theme/colors.dart';

class CadastroScreen extends StatefulWidget {
  @override
  _CadastroScreenState createState() => _CadastroScreenState();
}

class _CadastroScreenState extends State<CadastroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: login,
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
                // Formulário de cadastro
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
                      SizedBox(height: 10),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Celular',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'CPF',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 10),
                      // Campo de busca
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'O que está procurando?',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 20),
                      // Botão de cadastro
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(primary),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
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