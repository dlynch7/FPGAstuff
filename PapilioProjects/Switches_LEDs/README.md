# Switches_LEDs

I am following [Hamsterworks](http://hamsterworks.co.nz/mediawiki/index.php/Main_Page)' instructions for creating my first FPGA project, named "Switches_LEDs". I am using a different board (the [Papilio Pro LX9](http://papilio.gadgetfactory.net/index.php?n=Papilio.PapilioPro)) than the ones he suggests, so this document serves to keep track of the differences between my workflow and the workflow he describes in his [Intro to Spartan FPGA](https://github.com/hamsternz/IntroToSpartanFPGABook/blob/master/IntroToSpartanFPGABook.pdf) book.

## ToC
- [Creating a new project](#creating-a-new-project)
- [Setting behavior](#setting-behavior)
- [Implementation constraints](#implementation-constraints)
- [Writing to the FPGA](#writing-to-the-fpga)
- [Next project](#next-project)

## Creating a new project
The Papilio Pro uses a different FPGA than the development boards suggested in the Hamsterworks book.

I have a directory where I keep all my FPGA projects, so this is how the first screen of the "New Project Wizard" should look:

![newproject1](/PapilioProjects/Switches_LEDs/images/switches_LEDs_screenshot1.png)

This is where things are different from Hamsterworks' documentation. The Papilio Pro's FPGA is a Spartan 6 XC6SLX9 FPGA in a TQG144 package. See Papilio's [instructions](http://papilio.cc/index.php?n=Papilio.GettingStartedISE) for proof. By default, the Wizard suggests Verilog as the preferred language, but Hamsterworks uses VHDL.

![newproject2](/PapilioProjects/Switches_LEDs/images/switches_LEDs_screenshot2.png)

You should see the following when you click "Next>":

![newproject3](/PapilioProjects/Switches_LEDs/images/switches_LEDs_screenshot3.png)

## Setting behavior
This is no different from Hamsterworks' documentation, but it's important so I'm putting it here anyway:

![behavior](/PapilioProjects/Switches_LEDs/images/behavioral.png)

## Implementation constraints
This is _quite_ different from Hamsterworks's documentation. Every development board breaks out pins differently. Luckily, Papilio posted a generic implementation constraint file (.ucf) for the Papilio Pro, which I copied [here](/PapilioProjects/BPC3011-Papilio_Pro-general.ucf).
This file says which FPGA pins are connected to which headers on the board. I decided on the following setup:
![constraints](/PapilioProjects/Switches_LEDs/images/constraints.png)

## Writing to the FPGA
First, follow Hamsterworks' instructions to generate a .bit file which will be written to the FPGA.

Then, open Papilio Loader, the program that writes the .bit file to the FPGA. Again, my way of doing this is different from the documented way, but that's because I had a nightmare of a time getting `Papilio Loader` to run on my computer (Ubuntu 14.04 LTS); I eventually had to build the program from source. To open the GUI, open a new Terminal and type the following:
```
cd /opt/GadgetFactory/papilio-loader
sudo ./papilio-loader.sh
```

You should then see something like this:
![papilio-loader](/PapilioProjects/Switches_LEDs/images/start_papilio-loader_screenshot.png)

Once the GUI opens, navigate to `/home/daniel/documents/FPGA/PapilioProjects/Switches_LEDs` and select `Switches_LEDs.bit`.

![loader2](/PapilioProjects/Switches_LEDs/images/loader2.png)

Click `Do Selected Operations`

Once it loads, you should see something like this!

<p img align="center">
  <a href="/PapilioProjects/Switches_LEDs/videos/helloFPGA.gif"><img align="center" src="https://raw.githubusercontent.com/dlynch7/FPGAstuff/master/PapilioProjects/Switches_LEDs/videos/helloFPGA.gif" width="480" ></a>
</p>

## Next project
Module 3 of Hamsterworks' guide introduces Boolean logic operators (AND, OR, etc). The existing program can just be modified:

```vhdl
architecture Behavioral of Switches_LEDs is
begin
  LED_0 <= switch_0 AND switch_1;
  LED_1 <= switch_0 OR switch_1;
end Behavioral;
```
