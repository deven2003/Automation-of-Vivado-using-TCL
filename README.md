# Automation-of-Vivado-using-TCL
This project automates process of vivado synthesis and implementation with the help of tcl and python.

Tcl_scripting.ipynb: Automates the whole flow and generates the result in results1.csv. The designs are to be stored in folder named Modules

tcl_add1.tcl: creates a project named project3 and add all the designs present in modules folder

tcl_run3.tcl: helps in sythesizing of code and store results

This repo also contain designs which I have tried to synthesize through this tool. The design are as follows:

dff->d flip flop

multiply-> 8 bit multiplier

mutiply_not_synth->Huge multiplier which is not synthesisable

mux21->2:1 mux

There is a Results1.csv file attached to see the results for the design

If a row is read totally 0 in a csv file, the design is non-sythesisable.


