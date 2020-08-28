# VGA_Display

## Part1
In addition to logic blocks and flip-flops, contemporary FPGA devices provide flexible embedded memory blocks that have congurable memory bit widths and depths along with many other parameters. To access these blocks you will use another feature of Quartus, which creates modules that serve as interfaces to embedded blocks in FPGA devices. The module built using this feature provides all inputs and outputs required to work with the specic embedded block, and can be instantiated in your design. In this part of the lab, you will create a small RAM block and interact with it to understand how it works. Using the Quartus IP Catalog you will rst create a module for the desired memory and then test the memory module using the switches and hex displays for inputs and outputs.

## Part2
For this part you will learn how to display simple images on the VGA display. Your task is to design a
circuit to draw a filled square on the screen at any location in any color. You are provided with a VGA
adapter module that provides the functionality of accepting a set of (x; y) coordinates, known as a pixel,
on the screen and a color to draw at that pixel.
