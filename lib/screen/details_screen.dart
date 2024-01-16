import 'package:flutter/material.dart';
import 'package:skyscanner_demo/widget/car_card.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(105),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            AppBar(
                leading: IconButton(
                  icon:
                      const Icon(Icons.arrow_back_rounded, color: Colors.white),
                  onPressed: () {},
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
            Container(
              color: const Color.fromARGB(255, 6, 52, 90),
              child: const Padding(
                padding: EdgeInsets.all(13.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '86 resultados',
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                    Text(
                      'FILTRAR',
                      style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 21, 238, 202),
                          fontWeight: FontWeight.w700),
                    )
                  ],
                ),
              ),
            ),
          ])),
      body: Container(
        color: const Color.fromARGB(255, 221, 221, 221),
        height: double.infinity,
        child: ListView(
          children: const [
            CarCard(
              modelo: 'Citroen C1 Diesel o Similar',
              capacidad: 4,
              manual: true,
              precio: 35,
              puertas: '2-3',
              tipoCoche: 'Mini',
              numOfertas: 45,
              textoOferta: 'El más barato. Buena puntuación',
              urlImagen: 'assets/citroen.png',
            ),
            CarCard(
              modelo: 'Ford Fiesta (Gps) o similar',
              capacidad: 4,
              manual: true,
              precio: 60,
              puertas: '4-5',
              tipoCoche: 'Turista',
              numOfertas: 45,
              textoOferta: 'Buena puntuación',
              urlImagen: 'assets/fiesta.png',
            ),
            CarCard(
              modelo: 'Ford Fiesta (Gps) o similar',
              capacidad: 4,
              manual: true,
              precio: 60,
              puertas: '4-5',
              tipoCoche: 'Turista',
              numOfertas: 45,
              textoOferta: 'Buena puntuación',
              urlImagen: 'assets/fiesta.png',
            )
          ],
        ),
      ),
    );
  }
}
