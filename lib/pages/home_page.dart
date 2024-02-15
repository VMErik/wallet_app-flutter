import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_app/widgets/my_button.dart';
import 'package:wallet_app/widgets/my_card.dart';
import 'package:wallet_app/widgets/my_list_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Creamos el controlador, que asociaremos con el pagevie
    final _controller = PageController();

    return Scaffold(
      backgroundColor: Colors.grey[300],
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Colors.pink,
        child: Icon(Icons.monetization_on),
      ),
      // Establecemos la ubicacion del boton
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[200],
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.home, size: 30,color: Colors.pink[400],)),
              IconButton(onPressed: (){}, icon: Icon(Icons.settings, size: 30,color: Colors.grey,)),
        
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            // App bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Titulo
                  Row(
                    children: [
                      Text(
                        'My',
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        ' Cards',
                        style: TextStyle(fontSize: 26),
                      ),
                    ],
                  ),

                  // Icono de acciones
                  Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.grey[400]),
                      child: Icon(Icons.add))
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),

            // Tarjetas
            Container(
              height: 200,
              child: PageView(
                // Cambiamos la forma del scroll
                scrollDirection: Axis.horizontal,
                // Indicamos el controlador
                controller: _controller,
                children: [
                  MyCard(
                    balance: 150000,
                    color: Colors.deepPurple[400],
                    cardNumber: 1993,
                    expiryYear: 2024,
                    expiryMonth: 12,
                  ),
                  MyCard(
                    balance: 352000,
                    color: Colors.blue[300],
                    cardNumber: 2154,
                    expiryYear: 2024,
                    expiryMonth: 12,
                  ),
                  MyCard(
                    balance: 15000,
                    color: Colors.green[300],
                    cardNumber: 1425,
                    expiryYear: 2024,
                    expiryMonth: 12,
                  ),
                  MyCard(
                    balance: 124896,
                    color: Colors.pink[300],
                    cardNumber: 1256,
                    expiryYear: 2024,
                    expiryMonth: 12,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            SmoothPageIndicator(
              // Las dos primeras propiedades son obligatorias
              // Indicamos el controlador para las paginas
              controller: _controller,
              // Especificamos cuanto elementos tiene
              count: 4,
              effect: ExpandingDotsEffect(
                  // activeDotColor: Colors.purple
                  ),
            ),
            SizedBox(
              height: 25,
            ),

            // Botones
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Boton de Gastos
                    MyButton(
                      iconImagePath: 'assets/img/money.ico',
                      buttonText: 'Gastos',
                    ),
                    // Boton de PaBilleteragar
                    MyButton(
                      iconImagePath: 'assets/img/wallet.ico',
                      buttonText: 'Billetera',
                    ),
                    // Boton de Ahorro
                    MyButton(
                      iconImagePath: 'assets/img/save-money.ico',
                      buttonText: 'Ahorro',
                    )
                  ]),
            ),
            SizedBox(
              height: 40,
            ),

            // Transacciones
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  // Estadisticas
                  MyListTile(
                    iconImagePath: 'assets/img/bars.ico',
                    tileTitle: 'Estadisticas',
                    tileSubtitle: 'Gastos e Ingresos',
                  ),
                  // Transacciones
                  MyListTile(
                    iconImagePath: 'assets/img/transfer.ico',
                    tileTitle: 'Transacciones',
                    tileSubtitle: 'Historial de Transacciones',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
