version 1.0

task RunAdt {
  input {
    File? again
    Boolean? overwrite_log
    Boolean? unique_log
    Boolean? no_log
    Boolean? no_gui
    String? no_splash
    Boolean? die
    File? customizer
    String? lib
    String? ipython
    Boolean? update
    String? d_mode
    String? c_mode
    String pm_v
    String options
  }
  command <<<
    runAdt \
      ~{pm_v} \
      ~{options} \
      ~{if defined(again) then ("--again " +  '"' + again + '"') else ""} \
      ~{if (overwrite_log) then "--overwriteLog" else ""} \
      ~{if (unique_log) then "--uniqueLog" else ""} \
      ~{if (no_log) then "--noLog" else ""} \
      ~{if (no_gui) then "--noGUI" else ""} \
      ~{if defined(no_splash) then ("--noSplash " +  '"' + no_splash + '"') else ""} \
      ~{if (die) then "--die" else ""} \
      ~{if defined(customizer) then ("--customizer " +  '"' + customizer + '"') else ""} \
      ~{if defined(lib) then ("--lib " +  '"' + lib + '"') else ""} \
      ~{if defined(ipython) then ("--ipython " +  '"' + ipython + '"') else ""} \
      ~{if (update) then "--update" else ""} \
      ~{if defined(d_mode) then ("--dmode " +  '"' + d_mode + '"') else ""} \
      ~{if defined(c_mode) then ("--cmode " +  '"' + c_mode + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    again: ": play back lastlog file"
    overwrite_log: ": overwrite log file"
    unique_log: ": create a log file with a unique name"
    no_log: ": turn off logging"
    no_gui: ": start PMV without the Graphical User Interface"
    no_splash: ": turn off Splash Screen"
    die: ": do not start GUI event loop"
    customizer: ": run the user specified file"
    lib: ": add a libraries of commands"
    ipython: ": create an ipython shell instead of a python shell"
    update: "[nightly|tested|clear] : update MGLTools\\nif no arguments are given Update Manager GUI is provided\\n'nightly': download and install Nightly Builds\\n'tested' : download and install tested Nightly Builds\\n'clear'  : clear/uninstall all the updates"
    d_mode: ": specify a display mode\\nmodes can be any a combination of display mode\\n'cpk'  : cpk\\n'lines': lines\\n'ss'   : secondary structure ribbon\\n'sb'   : sticks and balls\\n'lic'  : licorice\\n'ms'   : molecular surface\\n'ca'   : C-alpha trace\\n'bt'   : backbone trace\\n'sp'   : CA-spline\\n'sssb' : secondary structure for proteins,\\nsticks and balls for other residues with bonds\\nlines for other residues without bonds"
    c_mode: ": specify a display mode color scheme:\\n'ca' : color by atom\\n'cr' : color by residue (RASMOL scheme)\\n'cc' : color by chain\\n'cm' : color by molecule\\n'cdg': color using David Goodsell's scheme\\n'cs' : color residues using Shapely scheme\\n'css': color by secondary structure element\\nexample:\\ndisplay protein as ribbon, non protein as sticks and balls\\nand color by atom type\\nadt -i --dmode sssb --cmode cr myprot.pdb\\nadt -i -m sssb -c cr myprot.pdb\\n"
    pm_v: ""
    options: ""
  }
  output {
    File out_stdout = stdout()
  }
}