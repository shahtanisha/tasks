import 'package:flutter/material.dart';
import 'package:newapp/components/add_button.dart';
import 'package:newapp/components/brands.dart';

class MyBottomsheet extends StatelessWidget {
  MyBottomsheet({super.key});
  final List<Map<String, String>> brands = [
    {
      'name': 'Cornitos Taco Shells',
      'quantity': '5',
      'newCost': '150',
      'cost': '110',
      'imageUrl':
          'https://shop.cornitos.in/cdn/shop/products/Cornitos-Taco-Shells-6-Inch-F_300x.jpg?v=1708586519',
    },
    {
      'name': 'Old Paso Taco Shells',
      'quantity': '5',
      'newCost': '200',
      'cost': '110',
      'imageUrl':
          'https://www.bigbasket.com/media/uploads/p/l/40248015_1-old-el-paso-taco-shells.jpg',
    },
    {
      'name': 'Ortega Taco Shells  ',
      'quantity': '5',
      'newCost': '240',
      'cost': '110',
      'imageUrl':
          'https://shop.cornitos.in/cdn/shop/products/Cornitos-Taco-Shells-6-Inch-F_300x.jpg?v=1708586519',
    },
    {
      'name': 'Taco Bell Taco Shells',
      'quantity': '5',
      'newCost': '260',
      'cost': '110',
      'imageUrl':
          'https://i5.walmartimages.com/seo/Taco-Bell-Crunchy-Taco-Shells-12-ct-4-5-oz-Box_447e8dcf-8eee-46fd-9110-5818c5049e59.354ffc4fa5cc59b236bc0175c2af606f.jpeg?odnHeight=640&odnWidth=640&odnBg=FFFFFF',
    },
    {
      'name': 'Fresh Best Taco Shells',
      'quantity': '5',
      'newCost': '240',
      'cost': '110',
      'imageUrl':
          'https://www.tradisifoods.com/images/Fresh_Is_Best_Yellow_TacoShells_144g.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        child: const Text('Bottom Sheet'),
        onPressed: () {
          showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (context) {
                return SizedBox(
                  height: 700,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 30, left: 30, right: 30, bottom: 10),
                        child: Row(
                          children: [
                            const Expanded(
                                child: Text(
                              'Buy the brand that you trust',
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w500),
                            )),
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                decoration: const BoxDecoration(
                                    color: Colors.black12,
                                    shape: BoxShape.circle),
                                child: const Icon(
                                  Icons.close_rounded,
                                  size: 25,
                                  color: Colors.black,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: brands.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.all(10),
                                        color:
                                            const Color.fromARGB(12, 0, 0, 0),
                                        child: Image.network(
                                            height: 75,
                                            width: 75,
                                            fit: BoxFit.cover,
                                            brands[index]['imageUrl']!),
                                      ),
                                      Brands(
                                          brand: brands[index]['name']!,
                                          quantity: brands[index]['quantity']!,
                                          newCost: brands[index]['newCost']!,
                                          cost: brands[index]['cost']!),
                                      const AddButton()
                                    ]),
                              );
                            }),
                      )
                    ],
                  ),
                );
              });
        });
  }
}
