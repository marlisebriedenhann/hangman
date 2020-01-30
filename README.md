# README

## Table of contents

1. [Context](#context)
1. [Features](#features)
1. [Developing](#developing)
1. [Testing](#testing)


## Context

This is a ruby application that mimics the game hangman.  


## Features

### Start
As a player, I want to start a game of Hangman

As a player, I want to be able to play again with a different word so that I can play many times

```sh
hangman.start
```

### Play
As a player, I want to see a victory message when I have won

As a player, I want to see a message when I have lost, including the word that I didn’t guess


```sh
hangman.play(game:, input_type:, data:, message:)
```

### Correct Guesses
As a player, I want to see the characters I’ve guessed correctly in a word

```sh
hangman.guesses(type:)
```

### Incorrect Guesses
As a player, I want to see the characters I have guessed incorrectly

```sh
hangman.guesses(type:)
```


### Lives Left
As a player, I want to see how many lives I have left

```sh
hangman.lives_left
```

## Developing

TODO

## Testing

TODO
