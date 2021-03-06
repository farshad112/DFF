# DFF
DFF design in verilog. A simple testbench is developed using SystemVerilog.

# Project Structure
This project is organized in following manner,
<br/>
<ui>![FolderIcon](http://icons.iconarchive.com/icons/paomedia/small-n-flat/16/folder-icon.png) ring_oscillator <br/>
&nbsp;&nbsp;|   
&nbsp;&nbsp;|->&nbsp;&nbsp;![FolderIcon](http://icons.iconarchive.com/icons/paomedia/small-n-flat/16/folder-icon.png) doc : contains project documents like testcase plan, verification plan etc. <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|->&nbsp;&nbsp;<ui>![docxIcon](http://icons.iconarchive.com/icons/treetog/file-type/16/docx-win-icon.png) dff_testcase_plan.txt <br/>
&nbsp;&nbsp;|->&nbsp;&nbsp;![FolderIcon](http://icons.iconarchive.com/icons/paomedia/small-n-flat/16/folder-icon.png) rtl : contains rtl code of dff  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|->&nbsp;&nbsp;![FolderIcon](http://icons.iconarchive.com/icons/paomedia/small-n-flat/16/folder-icon.png) verilog : contains verilog code of dff <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|->![Verilog File](http://icons.iconarchive.com/icons/untergunter/leaf-mimes/16/text-x-generic-icon.png) dff.v <br/>
&nbsp;&nbsp;|->&nbsp;&nbsp;![FolderIcon](http://icons.iconarchive.com/icons/paomedia/small-n-flat/16/folder-icon.png) scripts : contains scripts for running tests.<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|->![shell script](http://icons.iconarchive.com/icons/guillendesign/variations-2/16/Script-Console-icon.png) runscript.ps1 : script for ruuning tests with Questasim or modelsim on windows <br/>
&nbsp;&nbsp;|->&nbsp;&nbsp;![FolderIcon](http://icons.iconarchive.com/icons/paomedia/small-n-flat/16/folder-icon.png) sim : contains simulation work directory. This is where you should open a terminal to run your tests.<br/>
&nbsp;&nbsp;|->&nbsp;&nbsp;![FolderIcon](http://icons.iconarchive.com/icons/paomedia/small-n-flat/16/folder-icon.png) spec : contains RTL design specification.<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|->&nbsp;&nbsp;<ui>![docxIcon](http://icons.iconarchive.com/icons/treetog/file-type/16/docx-win-icon.png) dff_design.txt <br/>
&nbsp;&nbsp;|->&nbsp;&nbsp;![FolderIcon](http://icons.iconarchive.com/icons/paomedia/small-n-flat/16/folder-icon.png) tb: Contains Simple SystemVerilog testbench files.<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|->&nbsp;&nbsp;![Verilog File](http://icons.iconarchive.com/icons/untergunter/leaf-mimes/16/text-x-generic-icon.png) simple_tb.sv <br/>  

# Run Instruction
## Running Single Test without coverage analysis
```powershell
> cd sim
> ..\scripts\runscript.ps1  
```
