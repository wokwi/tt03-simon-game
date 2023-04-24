![](../../workflows/gds/badge.svg) ![](../../workflows/docs/badge.svg) ![](../../workflows/wokwi_test/badge.svg)

# Simon Says for Tiny Tapeout

TinyTapeout is an educational project that aims to make it easier and cheaper than ever to get your digital designs manufactured on a real chip.

Learn more at https://tinytapeout.com.

![Simon Says](docs/tt-simon-game.jpg)

## About the game

Simon says is a simple electronic memory game: the user has to repeat a growing sequence of colors.
The sequence is displayed by lighting up the LEDs. Each color also has a corresponding tone.

In each turn, the game will play the sequence, and then wait for the user to repeat the sequence
by pressing the buttons according to the color sequence.
If the user repeated the sequence correctly, the game will play a "leveling-up" sound,
add a new color at the end of the sequence, and move to the next turn.

The game continues until the user has made a mistake. Then a game over sound is played, and the game restarts.

## Clock configuration

The game supports four clock speeds, which can be selected using the clk3 and clk1 inputs:

| clk3 | clk1 | Clock Speed |
|------|------|-------------|
| 0    | 0    | 16KHz       |
| 0    | 1    | 20KHz       |
| 1    | 0    | 32KHz       |
| 1    | 1    | 35KHz       |

Setting the clock speed affects the speed of the game and the tone generator.

## Online simulation

You can play the game using the online Wokwi simulation at https://wokwi.com/projects/352319274216569857. The simulation also shows the wiring diagram.
