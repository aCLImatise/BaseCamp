class: CommandLineTool
id: adt.cwl
inputs:
- id: in_again
  doc: ': play back lastlog file'
  type: File
  inputBinding:
    prefix: --again
- id: in_overwrite_log
  doc: ': overwrite log file'
  type: boolean
  inputBinding:
    prefix: --overwriteLog
- id: in_unique_log
  doc: ': create a log file with a unique name'
  type: boolean
  inputBinding:
    prefix: --uniqueLog
- id: in_no_log
  doc: ': turn off logging'
  type: boolean
  inputBinding:
    prefix: --noLog
- id: in_no_gui
  doc: ': start PMV without the Graphical User Interface'
  type: boolean
  inputBinding:
    prefix: --noGUI
- id: in_no_splash
  doc: ': turn off Splash Screen'
  type: string
  inputBinding:
    prefix: --noSplash
- id: in_die
  doc: ': do not start GUI event loop'
  type: boolean
  inputBinding:
    prefix: --die
- id: in_customizer
  doc: ': run the user specified file'
  type: File
  inputBinding:
    prefix: --customizer
- id: in_lib
  doc: ': add a libraries of commands'
  type: string
  inputBinding:
    prefix: --lib
- id: in_ipython
  doc: ': create an ipython shell instead of a python shell'
  type: string
  inputBinding:
    prefix: --ipython
- id: in_update
  doc: "[nightly|tested|clear] : update MGLTools\nif no arguments are given Update\
    \ Manager GUI is provided\n'nightly': download and install Nightly Builds\n'tested'\
    \ : download and install tested Nightly Builds\n'clear'  : clear/uninstall all\
    \ the updates"
  type: boolean
  inputBinding:
    prefix: --update
- id: in_d_mode
  doc: ": specify a display mode\nmodes can be any a combination of display mode\n\
    'cpk'  : cpk\n'lines': lines\n'ss'   : secondary structure ribbon\n'sb'   : sticks\
    \ and balls\n'lic'  : licorice\n'ms'   : molecular surface\n'ca'   : C-alpha trace\n\
    'bt'   : backbone trace\n'sp'   : CA-spline\n'sssb' : secondary structure for\
    \ proteins,\nsticks and balls for other residues with bonds\nlines for other residues\
    \ without bonds"
  type: string
  inputBinding:
    prefix: --dmode
- id: in_c_mode
  doc: ": specify a display mode color scheme:\n'ca' : color by atom\n'cr' : color\
    \ by residue (RASMOL scheme)\n'cc' : color by chain\n'cm' : color by molecule\n\
    'cdg': color using David Goodsell's scheme\n'cs' : color residues using Shapely\
    \ scheme\n'css': color by secondary structure element\nexample:\ndisplay protein\
    \ as ribbon, non protein as sticks and balls\nand color by atom type\nadt -i --dmode\
    \ sssb --cmode cr myprot.pdb\nadt -i -m sssb -c cr myprot.pdb\n"
  type: string
  inputBinding:
    prefix: --cmode
- id: in_pm_v
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_options
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- adt
