// ignore_for_file: file_names

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: AppBar(
            backgroundColor: Color.fromRGBO(239, 240, 242, 1),
            elevation: 0,
            title: const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Icon(
                    Icons.close_sharp,
                    color: Colors.black,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "  Cuenta de ",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  Text(
                    "Google",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
            actions: const [
              Padding(
                padding: EdgeInsets.only(top: 12, right: 20),
                child: Icon(
                  Icons.help_outline_sharp,
                  size: 25,
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 13, right: 20),
                child: Icon(
                  Icons.search_rounded,
                  size: 25,
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 12, right: 15),
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/image3.jpg'),
                  radius: 18,
                ),
              ),
              
            ],
          ),
        ),
        body: Column(
          children: [
            Container(
              color: Color.fromRGBO(239, 240, 242, 1),
              child: TabBar(
                tabAlignment: TabAlignment.start,
                isScrollable: true,
                indicatorColor: Color.fromRGBO(28, 89, 191, 1),
                indicatorWeight: 4,
                labelStyle: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(28, 89, 191, 1)),
                onTap: (index) {
                  setState(() {});
                },
                tabs: const [
                  Tab(
                    text: "Página Principal",
                  ),
                  Tab(
                    text: "Información Personal",
                  ),
                  Tab(
                    text: "Datos y Privacidad",
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  const Homepage2(),
                  Container(
                    color: Colors.black,
                    child: const Center(
                        child: Text(
                      "Contenido de la Pagina Principal",
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                  Container(
                    color: Colors.black,
                    child: const Center(
                        child: Text(
                      "Contenido de la Pagina Principal",
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Homepage2 extends StatelessWidget {
  const Homepage2({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        child: Column(
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 0),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "\nTu cuenta está Protegida",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "La Verificación de seguridad revisó\ntu cuenta y no encontró acciones\nrecomendadas.",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "\nVer detalles\n",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(28, 89, 191, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Stack(
                        alignment: Alignment.centerRight,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Image.asset(
                              "assets/images/image1.png",
                              height: 95,
                              width: 130,
                            ),
                          ),
                          Positioned(
                            right: 0,
                            child: Container(
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(
              color: Color.fromARGB(255, 208, 208, 208),
              height: 10,
              thickness: 1,
              indent: 10,
              endIndent: 10,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 0),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "\nVerificación de Privacidad",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Elige la configuración de Privacidad\nindicada por ti con esta guia de paso\na paso.\n\n",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Realizar la Verificacion de Privacidad\n",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(28, 89, 191, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Stack(
                        alignment: Alignment.centerRight,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Image.asset(
                              "assets/images/image2.png",
                              height: 95,
                              width: 130,
                            ),
                          ),
                          Positioned(
                            right: 0,
                            child: Container(
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(
              color: Color.fromARGB(255, 208, 208, 208),
              height: 10,
              thickness: 1,
              indent: 10,
              endIndent: 10,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 0),
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "\n¿Buscas otra Información?\n",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.search_rounded,
                                color: Colors.black,
                              ),
                              SizedBox(width: 8),
                              Text(
                                " Buscar en la Cuenta de Google",
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(width: 60),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 16,
                                color: Colors.black,
                              ),
                            ],
                          ),
                          const Divider(
                            color: Color.fromARGB(255, 208, 208, 208),
                            height: 10,
                            thickness: 1,
                            indent: 10,
                           endIndent: 10,
                          ),

                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.help_outline_sharp,
                                color: Colors.black,
                              ),
                              SizedBox(width: 8),
                              Text(
                                " Ver las Opciones de Ayuda",
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(width: 90),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 16,
                                color: Colors.black,
                              ),
                            ],
                          ),
                          const Divider(
                            color: Color.fromARGB(255, 208, 208, 208),
                            height: 10,
                            thickness: 1,
                            indent: 10,
                           endIndent: 10,
                          ),

                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.announcement_outlined,
                                color: Colors.black,
                              ),
                              SizedBox(width: 8),
                              Text(
                                " Enviar Comentarios",
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(width: 140),
                              Icon(
                                size: 16,
                                Icons.arrow_forward_ios,
                                color: Color.fromARGB(255, 33, 33, 33),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(
              color: Color.fromARGB(255, 208, 208, 208),
              height: 50,
              thickness: 1,
              indent: 10,
              endIndent: 10,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 1, horizontal: 1),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Solo tú puedes ver la configuracion. También\npuedes revisar la configuracion de Maps, la\nbúsqueda o cualquier servicio de Google que uses\ncon frecuencia. Google protege la privacidad y la\nseguridad de tus datos.",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54,
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            children: [
                              Text(
                                "Mas Informacion",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromRGBO(28, 89, 191, 1),
                                ),
                              ),
                              SizedBox(width: 1),
                              Icon(
                                Icons.help_outline,
                                size: 12,
                                color: Color.fromRGBO(28, 89, 191, 1),
                              ),
                            ],
                          ),
                          const Divider(
                               color: Color.fromARGB(255, 208, 208, 208),
                               height: 50,
                               thickness: 1,
                               indent: 10,
                               endIndent: 10,
                              ),
                        ],
                          
                      ),
                      
                    ),
                    
                    Expanded(
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Image.asset(
                              "assets/images/image2.png",
                              height: 60,
                              width: 130,
                            ),
                          ),
                          Positioned(
                            right: 1,
                            child: Container(
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(255, 251, 251, 251),
                              ),
                            ),
                          ),
                        ],
                      ),
                      
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}
