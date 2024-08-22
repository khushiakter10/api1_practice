import 'package:api_1/database/product_list.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "just for you",
          style: TextStyle(color: Colors.purple),
        ),
        centerTitle: true,
      ),
      body: GridView.builder(
          itemCount: productList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 0.9,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
          ),
          itemBuilder: (context, index) {
            return SizedBox(
              height: 200,
              width: 140,
              child: Card(
                child: Column(
                  children: [
                    Image.network(
                      productList[index].imageUrl,
                      height: 100,
                     // width: 200,
                      fit: BoxFit.cover,
                    ),
                    Text("name: ${productList[index].name}"),
                    Text("Rating: ${productList[index].rating}"),
                    Text("Price: ${productList[index].price}"),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.star,size: 10,color: Colors.red,),
                        Icon(Icons.star,size: 10,color: Colors.red,),
                        Icon(Icons.star,size: 10,color: Colors.red,),
                        Icon(Icons.star,size: 10,color: Colors.red,),
                        Icon(Icons.star_border_outlined,size: 10,),
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
