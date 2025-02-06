import 'package:test/test.dart';

String findLongestWord(List<String> words) {
  if (words.isEmpty) return "";
  
  String longestWord = words[0];
  
  for (String word in words) {
    if (word.length > longestWord.length) {
      longestWord = word;
    }
  }
  
  return longestWord;
}


void main() {
  test('Finds longest word in a normal list', () {
    expect(findLongestWord(["apple", "banana", "cherry", "strawberry"]), "strawberry");
  });

  test('Handles an empty list', () {
    expect(findLongestWord([]), "");
  });

  test('Handles a list with one word', () {
    expect(findLongestWord(["hello"]), "hello");
  });

  test('Handles words of the same length', () {
    expect(findLongestWord(["dog", "cat", "bat"]), "dog");
  });

  test('Handles words with different casing', () {
    expect(findLongestWord(["Tree", "Mountain", "River"]), "Mountain");
  });
}
