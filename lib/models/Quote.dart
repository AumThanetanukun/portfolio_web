import 'package:flutter/material.dart';

class Quote{
  final int id;
  final String passage, speaker, lesson;

  Quote({this.id, this.passage, this.speaker, this.lesson});
}

List<Quote> quotes = [
  Quote(
    id: 1,
    passage: "By three methods we may learn wisdom: First, by reflection, which is noblest; Second, by imitation, which is easiest; and third by experience, which is the bitterest.",
    speaker: "Confucius",
    lesson: "lesson1",
  ),
  Quote(
    id: 2,
    passage: "Success is not final, failure is not fatal. It is the courage to continue that counts.",
    speaker: "Winston Churchill",
    lesson: "lesson2",
  ),
  Quote(
    id: 3,
    passage: "Be a slow walker, but never walk back.",
    speaker: "Abraham Lincoln",
    lesson: "lesson3",
  ),
];