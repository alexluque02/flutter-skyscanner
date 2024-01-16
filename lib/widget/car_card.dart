import 'package:flutter/material.dart';
import 'package:skyscanner_demo/screen/details_screen.dart';

class CarCard extends StatelessWidget {
  final String modelo;
  final String puertas;
  final String tipoCoche;
  final int capacidad;
  final double precio;
  final bool manual;
  final int numOfertas;
  final String textoOferta;
  final String urlImagen;
  const CarCard(
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
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 1.0),
      child: Card(
        color: Colors.white,
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          textoOferta,
                          style: const TextStyle(
                              color: Color.fromARGB(255, 22, 245, 137)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          '$numOfertas ofertas',
                          style: const TextStyle(color: Colors.grey),
                          textAlign: TextAlign.end,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Center(
                child: Image.asset(
                  urlImagen,
                  height: 150,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 6.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          tipoCoche,
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          '$puertas puertas · $modelo',
                          style:
                              const TextStyle(fontSize: 12, color: Colors.grey),
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
                          padding:
                              const EdgeInsets.only(left: 5.0, right: 10.0),
                          child: Text(
                            manual ? 'Man.' : 'Aut.',
                            style: const TextStyle(fontSize: 12),
                          ),
                        ),
                        const Icon(
                          Icons.ac_unit,
                          size: 15,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 5.0, right: 10.0),
                          child: Text(
                            'A/A',
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                        const Icon(
                          Icons.person,
                          size: 15,
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 5.0, right: 10.0),
                          child: Text(
                            '$capacidad',
                            style: const TextStyle(fontSize: 12),
                          ),
                        ),
                        const Icon(
                          Icons.shopping_bag,
                          size: 15,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 5.0, right: 10.0),
                          child: Text(
                            '1',
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 6.0),
                      child: Divider(
                        color: Color.fromARGB(255, 189, 189, 189),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            '${precio.toStringAsFixed(0)}\$',
                            style: const TextStyle(
                                color: Color.fromARGB(255, 97, 176, 250),
                                fontSize: 16),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DetailsScreen(
                                          modelo: modelo,
                                          capacidad: capacidad,
                                          manual: manual,
                                          precio: precio,
                                          puertas: puertas,
                                          tipoCoche: tipoCoche,
                                          numOfertas: numOfertas,
                                          textoOferta: textoOferta,
                                          urlImagen: urlImagen)),
                                );
                              },
                              child: const Text(
                                'SELECCIONAR',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 97, 176, 250),
                                    fontSize: 16),
                              ),
                            ))
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
