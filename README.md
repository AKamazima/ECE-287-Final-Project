 # ECE-287-Final-Project

1. Do something more in grasp. Think through the difficulty.
2. Better to not work alone

These are two of the few big, none prject specific, things I learned.
I initially wanted to create a network speed detector using the ethernet ports on the FPGA board. After a while I learned that using the triple speed ethernet, which was the IP Core, is well out of my range. The IP core also used the Qys tool & Verilog a program and language I am not familiar with and both took time to learn and attempy to understand(see Altera pdf). Because of that, I tried a second option of looking for VHDL code that I could work with, that is is when I learned that the Ethernet options I wanted to try were far out of my range of knowledge. I found something from a Cornell ECE website, the .zip folder contained tons of different versions of code, all of which do different things.

The last option I thought was to simply run a Speedtest on speedtest.net and export a files, something I've done multiple times as I already have speedtest excel files. After exporting the files, I wanted to read from the file the download speed(s), then have the LED flash at a corressponding speed. I did not get to that point. 

What I was able to do was essetially Lab 07, 3 LEDs flashing at different frequencies. The main issue there was that the way my code was written, the program ran in parellel since I used signals. This did not allow me to even simply turn certain LEDs on depending on a given input, I attempted this in the Initial.vhd code. 

The end product is the Final.vhd code. 

https://people.ece.cornell.edu/land/courses/ece5760/FinalProjects/f2011/mis47_ayg6/mis47_ayg6/
ftp://ftp.altera.com/up/pub/Altera_Material/12.0/Tutorials/DE2-115/using_triple_speed_ethernet.pdf
http://beta.speedtest.net/
