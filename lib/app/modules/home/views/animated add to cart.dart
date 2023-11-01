import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Animated Add to Cart Button'),
      ),
      body: const Center(
        child: AnimatedAddToCartButton(),
      ),
    ),
  ));
}

class AnimatedAddToCartButton extends StatefulWidget {
  const AnimatedAddToCartButton({super.key});

  @override
  _AnimatedAddToCartButtonState createState() => _AnimatedAddToCartButtonState();
}

class _AnimatedAddToCartButtonState extends State<AnimatedAddToCartButton> {
  bool _added = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _added = !_added;
        });
      },
      child: AnimatedContainer(
        transformAlignment: Alignment.centerLeft,
        duration: const Duration(milliseconds: 300),
        width: _added ? 160 : 60,
        height: 40,
        decoration: BoxDecoration(
          color: _added ? Colors.green : Colors.blue,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AnimatedOpacity(
              duration: const Duration(milliseconds: 300),
              opacity: _added ? 0 : 1,
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    SizedBox(width: 8),
                    Text(
                      'Add to Cart',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            AnimatedOpacity(
              duration: const Duration(milliseconds: 300),
              opacity: _added ? 1 : 0,
              child: const Padding(
                padding: EdgeInsets.only(right: 16),
                child: Row(
                  children: [
                    Icon(
                      Icons.remove,
                      color: Colors.white,
                    ),
                    SizedBox(width: 8),
                    Text(
                      'Remove',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
