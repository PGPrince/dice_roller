import "package:flutter/material.dart";
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {

  var currentDice = 5;

  void rollDice() {
    setState(() {
      currentDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    style: TextButton.styleFrom(
                      textStyle: TextStyle(
                        fontSize: 50,
                      ),
                      foregroundColor: Colors.white,
                    ),
                    onPressed: rollDice, 
                  child: Text("Roll Dice"),),
                const SizedBox(
                  height: 30,
                ),
                Image.asset(
                  'assets/images/dice-$currentDice.png',
                  width: 300,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      textStyle: TextStyle(
                        fontSize: 50,
                      ),
                      foregroundColor: Colors.white,
                    ),
                    onPressed: rollDice, 
                  child: Text("Roll Dice"),)
              ],
    );
  }
}