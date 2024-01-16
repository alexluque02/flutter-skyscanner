import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final String modelo;
  final String puertas;
  final String tipoCoche;
  final int capacidad;
  final double precio;
  final bool manual;
  final int numOfertas;
  final String textoOferta;
  final String urlImagen;
  const DetailsScreen(
      {super.key,
      required this.modelo,
      required this.capacidad,
      required this.manual,
      required this.precio,
      required this.puertas,
      required this.tipoCoche,
      required this.numOfertas,
      required this.textoOferta,
      required this.urlImagen});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_rounded, color: Colors.white),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            backgroundColor: const Color.fromARGB(255, 6, 52, 90),
            title: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Paris Charles de Gaulle',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  Text(
                    '13 abr.2020-15 abr.2020',
                    style: TextStyle(color: Colors.white, fontSize: 11),
                    textAlign: TextAlign.start,
                  ),
                ]),
            actions: [
              IconButton(
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ]),
        body: Container(
            color: const Color.fromARGB(255, 221, 221, 221),
            height: double.infinity,
            child: Column(
              children: [
                Image.asset(
                  urlImagen,
                  fit: BoxFit.fill,
                ),
                Card(
                  margin: const EdgeInsets.all(6.0),
                  color: Colors.white,
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        modelo,
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Text(
                      tipoCoche,
                      style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey),
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.sensor_door,
                                size: 15,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 3.0),
                                child: Text(
                                  '$puertas Puertas',
                                  style: const TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset(
                                'assets/marchas.png',
                                height: 13,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 3.0),
                                child: Text(
                                  manual ? 'Manual' : 'Automático',
                                  style: const TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.person,
                                size: 15,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 3.0),
                                child: Text(
                                  '$capacidad personas',
                                  style: const TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Precio: ${precio.toStringAsFixed(0)}\$',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromRGBO(6, 52, 90, 1)),
                            ),
                          ],
                        )),
                  ]),
                )
              ],
            )));
  }
}
