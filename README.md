## Take a ten minute walk

Create a function that will return true if the walk will take you exactly ten minutes and will return you to your starting point.

### Requirements

You are meeting a friend in New York City, where all roads are laid out in a perfect grid. You arrived ten minutes too early to the appointment, so you decided to take the opportunity to go for a short walk.<br>
The city provides its tourists with a Walk Generating App on their phones -- everytime you press the button it sends you an array of one-letter strings representing directions to walk. **eg. ['n', 's', 'w', 'e']**

You always walk only a single block in a direction and you know it takes you one minute to traverse one city block, so create a function that will return true if the walk the app gives you will take you exactly ten minutes (you don't want to be early or late!) and will, of course, return you to your starting point. Return false otherwise.

_Note: you will always receive a valid array containing a random assortment of direction letters ('n', 's', 'e', or 'w' only). It will never give you an empty array (that's not a walk, that's standing still!)._

#### Acceptance Criteria
```ruby
app.tenminuteswalk(['w', 's', 'e', 'e', 'n', 'n', 'e', 's', 'w', 'w']) # => true
app.tenminuteswalk(['w', 's', 'e', 'n', 'n', 'e', 's', 'w', 'w', 'w']) # => false
app.tenminuteswalk(['w', 's', 'e', 's', 's', 'e', 's', 'w', 'n', 'n']) # => false
app.tenminuteswalk(['w', 's']) # => false
```

Process 
---------

I began my process by breaking down the requirements for the task into smaller steps and defining what inputs / outputs were expected. In addition to this i started thinking about data structure I would require and the logic behind solving the kata before writing any piece of code. 

I wrote a very simple program that would allow me to solve the problem. I tested this using irb and passed the simplest tests before expanding on this further to meet the other requirements. 

Red - Green - Refactor 

Once I had a failing test, I then proceeded to write the code neccessary to pass the test.
I played around in irb to to gain an insight into how i wanted my program to behave and TDD the necessary steps to get there. 

Once the test had passed I committed my code and began refactoring by renaming classes.  

After this, I proceeded to write the next set of test for words of even length. I then repeated my cycle of implementation.

The code that I wrote after did not pass as the return value included an extra character. This was as a result of how I was accessing the indices of the string. A quick change to range solved the problem. 

### Positives
 
 => Writing a plan of action before attempting to write code helped to structure what I wanted the program to do
 => Using requirements as template for tests
 => Interacting and playing with features tests in irb helped to structure the overall program. 

 ### Improve 
 => Setup gemfile and short readme at the beginning. 

