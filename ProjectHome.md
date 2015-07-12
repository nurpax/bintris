Bintris is a Tetris-style game for Emacs.  Instead of the usual tetris shapes, the blocks are ones and zeros and the player needs to build target decimal numbers bit by bit in order to collapse rows.

Original game concept by Juha Lainema.  This Emacs version is a remake of his Win32 version.

## How to run it ##

  * Start Emacs in windowed mode
  * `M-x load-file`, bintris.el  (or `(load-file "bintris.el")`)
  * `M-x bintris`

## How to play ##
You need to understand the [binary numeral system](http://en.wikipedia.org/wiki/Binary_numeral_system) to be able to play at all.

### Keyboard ###
Use left & right arrows on your keyboard to move the bits.  Press spacebar to drop them.

### Game logic ###
A single row is composed of black (zero) and white (one) blocks.  Each full row forms up a binary number.  Say, if you have a row with

```
W W B
```

it's interpreted as 110 (binary) or 6 (decimal).

When a full row matches the "target number", it will get collapsed.  The goal of the game is to collapse as many rows as possible.

**Warning**: If your Emacs background is customized to black, you won't see the black pieces against the background.  I'll fix this in future versions.  A work-around that works for me at least is to run Emacs without init scripts, like so: `emacs --no-init-file`

## Screenshots ##

![http://bintris.googlecode.com/svn/wiki/images/screenshot1.png](http://bintris.googlecode.com/svn/wiki/images/screenshot1.png)
