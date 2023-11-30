import 'package:flutter/material.dart';
import 'package:slicing_ui/data/cake.dart';
import 'package:slicing_ui/screen/cake_detail.dart';

class CakePage extends StatelessWidget {
  const CakePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 15.0,
            childAspectRatio: 0.8,
          ),
          itemCount: listCakes.length,
          itemBuilder: (context, index) {
            return _buildCard(listCakes[index], context);
          },
        ),
      ),
    );
  }

  Widget _buildCard(Cake cake, context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return CakeDetail(
              assetPath: cake.imageUrl,
              cakeprice: cake.price,
              cakename: cake.name);
        }));
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 3.0,
              blurRadius: 5.0,
            ),
          ],
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.favorite,
                    color: cake.isFavorite
                        ? Color.fromRGBO(177, 156, 217, 1)
                        : Colors.grey,
                  ),
                ],
              ),
            ),
            Expanded(
              // Gunakan Expanded di sini
              child: Hero(
                tag: cake.imageUrl,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage(cake.imageUrl),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 7.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                'Rp ${cake.price}',
                style: const TextStyle(
                  color: Color.fromRGBO(177, 156, 217, 1),
                  fontFamily: 'Varela',
                  fontSize: 14.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                cake.name,
                style: const TextStyle(
                  color: Color.fromRGBO(177, 156, 217, 1),
                  fontFamily: 'Varela',
                  fontSize: 14.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: const Color.fromRGBO(250, 248, 246, 1),
                height: 1.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.shopping_basket,
                        color: Color.fromRGBO(177, 156, 217, 1),
                        size: 16,
                      ),
                      SizedBox(width: 6),
                      Text(
                        'Beli',
                        style: TextStyle(
                          fontFamily: 'Varela',
                          color: Color.fromRGBO(177, 156, 217, 1),
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.remove_circle_outline,
                        color: Color.fromRGBO(177, 156, 217, 1),
                        size: 16,
                      ),
                      SizedBox(width: 6),
                      Text(
                        '3',
                        style: TextStyle(
                          fontFamily: 'Varela',
                          color: Color.fromRGBO(177, 156, 217, 1),
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(width: 6),
                      Icon(
                        Icons.add_circle_outline,
                        color: Color.fromRGBO(177, 156, 217, 1),
                        size: 16,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
