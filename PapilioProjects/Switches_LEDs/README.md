# Switches_LEDs

I am following [Hamsterworks](http://hamsterworks.co.nz/mediawiki/index.php/Main_Page)' instructions for creating my first FPGA project, named "Switches_LEDs". I am using a different board (the [Papilio Pro LX9](http://papilio.gadgetfactory.net/index.php?n=Papilio.PapilioPro))than the ones he suggests, so this doc serves to keep track of the differences between my workflow and the one he documents in his [Intro to Spartan FPGA](https://github.com/hamsternz/IntroToSpartanFPGABook/blob/master/IntroToSpartanFPGABook.pdf) book.

## ToC
- [Creating a new project](#creating-a-new-project)

## Creating a new project
The Papilio Pro uses a different FPGA than the development boards suggested in the Hamsterworks book.

I have a directory where I keep all my FPGA projects, so this is how the first screen of the "New Project Wizard" should look:
![newproject1](/PapilioProjects/Switches_LEDs/images/switches_LEDs_screenshot1.png)

This is where things are different from Hamsterworks' documentation. The Papilio Pro's FPGA is a Spartan 6 XC6SLX9 FPGA in a TQG144 package. See Papilio's [instructions](http://papilio.cc/index.php?n=Papilio.GettingStartedISE) for proof. By default, the Wizard suggests Verilog as the preferred language, but Hamsterworks uses VHDL.
![newproject2](/PapilioProjects/Switches_LEDs/images/switches_LEDs_screenshot2.png)

You should see the following when you click "Next>":
![newproject3](/PapilioProjects/Switches_LEDs/images/switches_LEDs_screenshot3.png)
