import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  final textoTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final textoSubtitulo = TextStyle(fontSize: 18.0, color: Colors.grey);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _crearImagen(),
            _crearTitulo(),
            _crearAcciones(),
            _crearTexto()
          ],
        ),
      ),
    );
  }

  Widget _crearImagen() {
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage(
            'https://images.pexels.com/photos/814499/pexels-photo-814499.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
        fit: BoxFit.cover,
        height: 200.0,
      ),
    );
  }

  Widget _crearTitulo() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Lago con un puente',
                    style: textoTitulo,
                  ),
                  SizedBox(
                    height: 7.0,
                  ),
                  Text(
                    'Lago con un puente',
                    style: textoSubtitulo,
                  )
                ],
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.red,
              size: 30.0,
            ),
            Text(
              '41',
              style: TextStyle(fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }

  Widget _crearAcciones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _accion(Icons.call, 'Call'),
        _accion(Icons.near_me, 'Route'),
        _accion(Icons.share, 'Share')
      ],
    );
  }

  Widget _accion(IconData icon, String texto) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          color: Colors.blue,
          size: 40.0,
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          texto,
          style: TextStyle(fontSize: 15.0, color: Colors.blue),
        )
      ],
    );
  }

  Widget _crearTexto() {
    return SafeArea(
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40.0),
          child: Text(
            'Ullamco sit id ea qui enim ex commodo exercitation. Cupidatat quis qui ut ullamco ad fugiat adipisicing consequat reprehenderit incididunt. Consectetur dolore sint et ea aliquip magna eiusmod esse. Laboris do deserunt id deserunt reprehenderit reprehenderit laborum veniam in excepteur. Magna eiusmod nostrud quis exercitation id nisi adipisicing irure consequat id consequat reprehenderit.',
            textAlign: TextAlign.justify,
          )),
    );
  }
}
