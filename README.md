# number-wordifier
Simple ruby app to convert number to word combination.

Problem :
Given a 10 digit phone number, you should return all possible words or combinations of words from the provided dictionary, that can be mapped back as a whole to the number.

With this we can generate numbers like 1-800-motortruck which is easier to remember than 1-800-6686787825.

The phone number mapping to letters is as follows:

2 = a b c
3 = d e f
4 = g h i
5 = j k l
6 = m n o
7 = p q r s
8 = t u v
9 = w x y z

The phone numbers will never contain a 0 or 1.
Words have to be at least 3 characters.


Examples :
6686787825 returns a (long) list with at least these word combinations:

* motortruck
* motor, truck
* motor, usual
* noun, struck
* not, opt, puck

2282668687 returns a (long) list with at least these word combinations:

* catamounts
* acta, mounts
* act, amounts
* act, contour
* cat, boot, our

Solution :
- Have the file which contains all the dictionary words under lib folder.
- Create a ruby lib file with mapping for each alphabet to number.
- Have a method to reads all the words from the file and return it as an array.
- Have a method which numeric equivalent to the given number.
- Create a ruby class with one public method (convert) which considers one command line argument while executing the ruby file.
- Validate the given number for its length to 10 digits and no alphabets, ignore the alphabets, print "Invalid number" if the number provided in not valid.
- Get all the words from Dictionary which can be combined.
- Get all matched words from Dictionary with length equal to 10 into an array.
- Get  all the combinations from all the matched words from Dictionary, when combined the length of the words combined should be 10, reject words combinations greater than or less than 10.
- Add array containing single word and multiple words array and provide as result.



How to use :

- Make sure you have ruby installed in your local machine
  Go through the following link for ruby installation https://www.ruby-lang.org/en/documentation/installation/

- Clone the repository
``` git clone git@github.com:RakeshH-25/number-wordifier.git```

- Install RSpec
  Follow instructions on https://github.com/rspec/rspec

- Get in to the repository directory and execute ruby code.
  ```ruby number_wordifier.rb 2282668687```

- Run basic test cases
  ```rspec number_wordifier_spec.rb```


