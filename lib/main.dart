import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Общежития КубГАУ'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
        //padding: EdgeInsets.all(40),
        //child: Column(
        children: [
          Image.asset('assets/71.jpg'),
          Container(
            width: 400,
            height: 120,
            padding: EdgeInsets.all(40),
            child: ListTile(
                title: const Text(
                  'Общежитие N20',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                subtitle: const Text("Краснодар, ул. Калинина, 13"),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                      onPressed: () {},
                    ),
                    const Text("27"),
                  ],
                )),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () => {},
                child: Column(
                  // Replace with a Row for horizontal icon + text
                  children: const [Icon(Icons.phone), Text("Позвонить")],
                ),
              ),
              const SizedBox(width: 10),
              TextButton(
                onPressed: () => {},
                child: Column(
                  children: const [
                    Icon(Icons.location_on_outlined),
                    Text("Маршрут")
                  ],
                ),
              ),
              const SizedBox(width: 10),
              TextButton(
                onPressed: () => {},
                child: Column(
                  children: const [Icon(Icons.share), Text("Поделиться")],
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Container(
            child: const Text('«Студенческий городок или так называемый кампус Кубанского ГАУ состоит из двадцати'
                'общежитий, в которых проживает более 8000 студентов, что составляет 96% от всех нуждающихся. Студенты первого курса обеспечены местами в общежитии полностью. В соответствии с Положением о студенческих общежитиях университета, при поселении между администрацией и студентами заключается договор найма жилого помещения. Воспитательная работа в общежитиях направлена на улучшение быта, соблюдение правил внутреннего распорядка, отсутствия асоциальных явлений в молодежной среде. Условия проживания в общежитиях университетского кампуса полностью отвечают санитарным нормам и требованиям: наличие оборудованных кухонь, душевых комнат, прачечных, читальных залов, комнат самоподготовки, помещений для заседаний студенческих'
                'советов и наглядной агитации. С целью улучшения условий быта студентов активно работает система студенческого самоуправления - студенческие советы организуют всю работу по самообслуживанию.»',
              textAlign: TextAlign.justify,
            ),
          constraints: const BoxConstraints.tightForFinite(
            width: 280,
          ),
          ),
        ],
        ),
      ),
    );
  }

}
