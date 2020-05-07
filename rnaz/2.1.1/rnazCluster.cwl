class: CommandLineTool
id: rnazCluster.pl.cwl
inputs:
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: loci
  doc: Set these flags to print information for ``windows" and/or ``loci" in the output.
    By default, both single windows and combined loci are printed.
  type: boolean
  inputBinding:
    prefix: --loci
- id: header
  doc: Print a header explaining the fields of the output (see below for a detailed
    description of the fields).
  type: boolean
  inputBinding:
    prefix: --header
- id: html
  doc: 'Generates HTML formatted output of the results in the subdirectory "results".
    For this option to work you need to have installed ghostscript and a few programs
    from the ViennaRNA package. More precisely you need the following executables
    in your PATH: "gs", "RNAalifold", "colorrna.pl", "coloraln.pl". Alternatively
    you can adjust the locations of these programs directly in the "rnazCluster.pl"
    script. Please note that if you use this option the program will get very slow
    because the figures have to be generated. It is also important that you have run
    RNAz with the "--show-gaps" option!'
  type: boolean
  inputBinding:
    prefix: --html
- id: html_dir
  doc: 'Name of directory where HTML pages are stored. Default: results'
  type: boolean
  inputBinding:
    prefix: --html-dir
- id: man
  doc: Prints a detailed manual page and exits.
  type: boolean
  inputBinding:
    prefix: --man
outputs: []
cwlVersion: v1.1
baseCommand:
- rnazCluster.pl
