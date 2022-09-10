import 'package:flutter/material.dart';

import '../controllers/loginController.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var credentials = Login();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.white,
                Colors.white,
                Colors.white,
                Color.fromARGB(255, 205, 229, 212),
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                './assets/img/logo_if.png',
                scale: 1.7,
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Você é...',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtonBar(
                    buttonHeight: 50,
                    buttonMinWidth: 100,
                    children: [
                      OutlinedButton(
                        onPressed: () {},
                        child: const Text(
                          'Aluno',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        child: const Text(
                          'Servidor',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        child: const Text(
                          'Responsável',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: SizedBox(
                  width: 300,
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                      labelText: 'Usuário',
                      labelStyle: TextStyle(color: Colors.black),
                    ),
                    onChanged: (value) {
                      credentials.login = value;
                    },
                  ),
                ),
              ),
              SizedBox(
                width: 300,
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Senha',
                    labelStyle: TextStyle(color: Colors.black),
                  ),
                  onChanged: (value) {
                    credentials.pswd = value;
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(35),
                    child: const Text('Esqueceu a senha? Clique aqui'),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 300,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            const MaterialStatePropertyAll<Color>(Colors.green),
                      ),
                      child: Text('Entrar'),
                      onPressed: () {
                        credentials.verifyCredentials(context);
                      },
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
