# Spam Programming language

The object is:
Try to make programming code look like shitty spam!

The programming language only recognizes a few terms the rest is simply ignored.

Like real spam, efficiency plays no role, so slowdowns and lags may be expected.

This is a joke programming language, I hope you like it.

# Recognized words

These words are "keywords" and will make Spam respond. Like I said all other words are ignored.
Commands are case INSENSITIVE. So lower case or upper case won't matter.

## WIN

Increases current byte by 1

## CASINO

Decrease current byte by 1

## MONEY

Move pointer up by 1 (1023 is max. If the max has been reached it goes back to 0)

## CASH

Move pointer down by 1 (0 is min. If the min has been reached it goes back to 1023)

## BET

Show the value of the current byte as a character

## SHOW

Show the ASCII value of the current byte as a number

## NEXT

New line

## CHECK

If the current byte is 0 skip the next (recognized) command

## VIAGRA

User can input a string that will be converted into a number.
The number of memory slots used depends on the height of the number.

## DIPLOMA

User can input a string and will take up as many memory spots as it needs to fill it out.
You can cap this by using the $ prefix anywhere prior to the Diploma command

## PREFIX: HTTP://

When you prefix something with HTTP:// it will serve as a label. If you type the same url without http:// it will act as a goto command to go to the http:// varianbt.
If you use the same url in a HTTP:// twice only the last one will be counted.
This too is case insensitive.

## PREFIX: X

When you type a number after the x (no spaces or anything) it will perform the last valid command the number of times you want.
If no command available or no valid number was entered nothing will happen

## SUFFIX: X

Same as 'PREFIX: X'

## PREFIX: $

Set the maximum length of a string "DIPLOMA" can accept. This allows you "cleaner" coding when accepting strings.
For the "VIAGRA" command nothing changes.
