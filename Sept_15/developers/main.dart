// Challenge: Given a string s, reverse the order of characters in each word within a sentence while still preserving whitespace and initial word order.
// Example:
//    Input: "Debuggind is so very fun!"
//    Output: "gniggubeD si os yrev !nuf"

void reverseWordInString(s) {
  List<String> reversedWordsList = [];
  var wordsList = s.split(' ');

  for (int i = 0; i <= wordsList.length; i++) {
    String currentWord = wordsList[i];
    List<String> currentWordList = currentWord.split('');
    Iterable reversedWordList = currentWordList.reversed;
    String reversedWord = reversedWordList.join('');

    reversedWordsList.add(reversedWord);
  }
  print(reversedWordsList.join(' '));
}

// Challenge: For all whole numbers 1-100, print "Fizz" if the number is divisible by ONLY 3, "Buzz" is the number is divisible by ONLY 5, and "FizzBuzz" if the number is divisible by 3 AND 5. If the number is not divisible ny 3 OR 5, simply print the number.
// Example:
//    Output: 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz, 16...(continue through 100)
 
void fizzBuzz() {
  int num = 1;

  for (int i = 0; i < 100; i++) {
    if (num % 3 == 0) {
      print("Fizz");
    } else if (num % 5 == 0 && num % 3 != 0) {
      print("Buzz");
    } else if (num % 3 == 0 && num % 5 == 0) {
      print("FizzBuzz");
    } else {
      print(num);
    }

    num++;
  }
}

// Challenge: A palindrome is a number or word that is the same even after it is reversed. Given a number, print "True" if the number is a palindrome or "False" if it is not.
// Example:
//    Input: isPalindrome(123454321) Output: True
//    Input: isPalindrome(439281711) Output: False

void isPalindrome(num) {
  String numAsString = num.toString();

  var reversedNumAsString = numAsString.split('').reversed;

  if (numAsString == reversedNumAsString) {
    print("True");
  } else {
    print("False");
  }
}

// Challenge: Given a string of words separated by a number of spaces, print the last word in the string.
// Example:
//    Input: "    Fly me  to    the moon     "
//    Outpot: "moon"

void lengthOfLastWord(string) {
  List<String> listOfWords = string.split('');

  var wordsWithLength = listOfWords.where((word) => word.length >= 1).toList();

  var lastWord = wordsWithLength[wordsWithLength.length - 1];

  print(lastWord);
}

// Challenge: Given an integer List nums, move all 0's to the end of it while maintaining the relative order of the non-zero elements.
// Note: You should not make a new List - just move the 0s to the end of the given List
// Example:
//    Input: nums = [0, 6, 4, 0, 12]
//    Output: nums = [6, 4, 12, 0, 0]

void moveZeroes(nums) {
  var i = 0;
  var lengthCounter = 0;

  while (lengthCounter < nums.length) {
    if (nums[i] == 0) {
      nums.remove(nums[i]);
      nums.add(0);
    } else {
      i++;
    }
  }

  print(nums);
}

void main() {
  // reverseWordInString("Debugging is so very fun!");
  fizzBuzz();
  // isPalindrome(1834381);
  // lengthOfLastWord("  fly me   to   the moon   ");
  // moveZeroes([1, 7, 0, 0, 3, 0, 2]);
}
