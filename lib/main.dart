import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    ),
  );
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool entrar = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text(
          (entrar) ? "LOGIN" : "CADASTRO",
          style: const TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 18,
              fontWeight: FontWeight.w500),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
          child: Form(
            child: Column(
              children: [
                const Icon(
                  Icons.account_circle_rounded,
                  color: Color.fromARGB(142, 0, 0, 0),
                  size: 111,
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "E-mail",
                      fillColor: Colors.white,
                      filled: true,
                      hintStyle: const TextStyle(
                        color: Color.fromARGB(130, 0, 0, 0),
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                  style: const TextStyle(
                    color: Color.fromARGB(234, 0, 0, 0),
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Senha",
                      fillColor: Colors.white,
                      filled: true,
                      hintStyle: const TextStyle(
                        color: Color.fromARGB(130, 0, 0, 0),
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                  style: const TextStyle(
                    color: Color.fromARGB(234, 0, 0, 0),
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                  obscureText: true,
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 15),
                    child: SizedBox(
                      height: 50,
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              )),
                          child: Text(
                            (entrar) ? "Entrar" : "Cadastrar",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          )),
                    )),
                TextButton(
                    onPressed: () {
                      setState(() {
                        entrar = !entrar;
                      });
                    },
                    child: Text(
                      (entrar)
                          ? "Ainda não possui login? Cadastre-se"
                          : "Já possui login? Entre",
                      style: const TextStyle(
                        color: Colors.blue,
                        fontSize: 15,
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
