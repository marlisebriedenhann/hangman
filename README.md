# Hangman

## Table of contents

1. [Context](#context)
1. [Features](#features)
1. [Developing](#developing)
1. [Testing](#testing)


## Context

This is a ruby application that mimics the game hangman.  


## Features

### Start
* [ ] As a player, I want to start a game of Hangman

* [ ] As a player, I want to be able to play again with a different word so that I can play many times

```rb
hangman.start
```

### Play
* [ ] As a player, I want to see a victory message when I have won

* [ ] As a player, I want to see a message when I have lost, including the word that I didn’t guess


```rb
hangman.play(game:, input_type:, data:, message:)
```

### Correct Guesses
* [ ] As a player, I want to see the characters I’ve guessed correctly in a word

```ruby
hangman.guesses(type:)
```

### Incorrect Guesses
* [ ] As a player, I want to see the characters I have guessed incorrectly

```ruby
hangman.guesses(type:)
```


### Tries Remaining
* [ ] As a player, I want to see how many tries I have remaining

```ruby
hangman.tries
```

## How to Play

```sh
$ cd path/to/hangman
$ script/hangman
Welcome to Hangman!
Press Enter to begin

_ _ _ _ _ _ _
Tries Remaining: 5
Enter a character: c

_ _ _ _ _ _ _
Previous Guesses: [c]
Tries Remaining: 4
Enter a character: a

_ a _ a _ a _ 
Previous Guesses: [c a]
Tries Remaining: 3
Enter a character or make a guess: b

b a _ a _ a _ 
Previous Guesses: [c a b]
Tries Remaining: 2
Enter a character or make a guess: bananas

b a n a n a s
Woohoo!  You guessed correctly!
Previous Guesses: [c a b]
Tries Remaining: 2

Press Enter to play again

_ _ _ _ _ _
Enter a character: a

a _ _ _ _ _
Previous Guesses: [a]
Tries Remaining: 4
Enter a character or make a guess: b

a _ _ _ _ _
Previous Guesses: [a b]
Tries Remaining: 3
Enter a character or make a guess: c

a _ _ _ _ _
Previous Guesses: [a b c]
Tries Remaining: 2
Enter a character or make a guess: d

a _ _ _ _ _
Previous Guesses: [a b c d]
Tries Remaining: 1
Enter a character or make a guess: z

a p p l e s
Boohoo!  You guessed incorrectly!
Previous Guesses: [a b c d z] 
Tries Remaining: 0

Press Enter to play again
```

## Developing

TODO

## Testing

TODO
