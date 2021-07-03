import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PagesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Colors.white,
            ),
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          width: 280,
                          child: Text(
                            'Premieres',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ), //favoritos
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 190,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        SizedBox(
                          width: 15,
                        ),
                        _menuPelicula('assets/godvsking.jpg',
                            'Godzilla vs KingKong', '2021', '4.5'),
                        SizedBox(
                          width: 5,
                        ),
                        _menuPelicula('assets/ligajusticia.jpg',
                            'La Liga de la Justicia II', '2021', '4.7'),
                        SizedBox(
                          width: 5,
                        ),
                        _menuPelicula(
                            'assets/avatar.jpg', 'Avatar', '2021', '4.1'),
                      ],
                    ),
                  ),
                  Container(
                    child: Container(
                      margin: EdgeInsets.only(right: 70, top: 20),
                      width: 280,
                      child: Text(
                        'In this week',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin:
                        EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
                    height: 322,
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: <Widget>[
                        SizedBox(
                          height: 15,
                        ),
                        _listaPelicula(
                            'assets/escuadronSuicida.jpg',
                            'Escuadrón Suicida',
                            'James Gunn',
                            '2016',
                            '2h 17m',
                            '4.5'),
                        _listaPelicula(
                            'assets/seniorAnillos.jpg',
                            'El señor de nos anillos',
                            'Joseph Patrick',
                            '2010',
                            '2h 30m',
                            '4.6'),
                        _listaPelicula('assets/transformer.jpg', 'Transformers',
                            'Jim Carrey', '2011', '1h 40m', '4.2'),
                        _listaPelicula(
                            'assets/terremoto.jpg',
                            'La falla de San Andres',
                            'Gordon Smith',
                            '2016',
                            '2h 01m',
                            '4.1'),
                        _listaPelicula(
                            'assets/furiaTitanes.jpg',
                            'Furia de Titanes',
                            'Gary Colman',
                            '2015',
                            '2h 20m',
                            '4.1')
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Image.asset('assets/video.png'), label: ''),
          BottomNavigationBarItem(
              icon: Image.asset('assets/video2.png'), label: ''),
          BottomNavigationBarItem(
              icon: Image.asset('assets/buscar.png'), label: ''),
          BottomNavigationBarItem(
              icon: Image.asset('assets/menu.png'), label: ''),
        ],
      ),
    );
  }
}

Widget _menuPelicula(
        String imagen, String pelicula, String anio, String puntaje) =>
    Container(
      //autofocus: true,
      child: Container(
        width: 270.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                    width: 250,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(imagen))),
                Container(
                  margin: EdgeInsets.only(left: 10, top: 110),
                  child: Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.solidStar,
                        size: 15,
                        color: Colors.yellow,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        puntaje,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    pelicula,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(anio),
                ],
              ),
            ),
          ],
        ),
      ),
    );

Widget _listaPelicula(String imagen, String pelicula, String director,
        String anio, String duracion, String puntaje) =>
    Container(
      child: Container(
        height: 81,
        width: 250.0,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          children: [
            Container(
              width: 370,
              height: 1,
              color: Colors.grey[200],
            ),
            Row(
              children: [
                Stack(
                  children: [
                    Container(
                        width: 60,
                        height: 60,
                        margin: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              imagen,
                              fit: BoxFit.cover,
                            ))),
                    Container(
                      margin: EdgeInsets.only(left: 15, top: 50),
                      child: Row(
                        children: [
                          Icon(
                            FontAwesomeIcons.solidStar,
                            size: 15,
                            color: Colors.yellow,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            puntaje,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontFamily: 'Schyler'),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Container(
                  child: Container(
                    height: 70,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                            child: Text(
                          pelicula,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        )),
                        SizedBox(
                          height: 3,
                        ),
                        Container(
                            child: Text(
                          director + ' • ' + anio,
                          style: TextStyle(fontFamily: 'Schyler'),
                        )),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                            child: Text(
                          duracion,
                          style: TextStyle(fontFamily: 'Schyler'),
                        )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
