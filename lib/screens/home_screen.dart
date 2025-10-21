import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int contador = 0;

  void incrementar(){
    contador++;
    setState(() {
      
    });
  }
  void restar(){
    contador--;
    setState(() {
      
    });
  }
  void resetar(){
    contador = 0;
    setState(() {
      
    });
  }
  
  @override
  Widget build(BuildContext context) {
    const tamano = TextStyle(fontSize: 30);

    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(title: Text('Contador'), elevation: 10.0),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('numero de toques', style: tamano),
            SizedBox(height: 50),
            Text('$contador', style: tamano),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomFloatingActionButton(
        incrementarFN: incrementar,
        restarFN: restar,
        resetarFN: resetar,

      ),
    );
  }
}

class CustomFloatingActionButton extends StatelessWidget {
  final Function incrementarFN;
  final Function restarFN;
  final Function resetarFN;
  const CustomFloatingActionButton({
    super.key, required this.incrementarFN, required this.restarFN, required this.resetarFN,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FloatingActionButton(
          //child: const Icon(Icons.add),
          child: const Text('Suma'),
          onPressed: () => incrementarFN()
        ),
        SizedBox(width: 50),
        FloatingActionButton(
          //child: const Icon(Icons.add),
          child: const Text('Restar'),
          onPressed: () => restarFN()
        ),
        SizedBox(width: 50),
        FloatingActionButton(
          //child: const Icon(Icons.add),
          child: const Text('Resetar'),
          onPressed:  () => resetarFN()
        ),
      ],
    );
  }
}
