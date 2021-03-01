class: CommandLineTool
id: rnazCluster.pl.cwl
inputs:
- id: in_cut_off
  doc: "Only consider hits with RNAz class probablility P>X\n(Default:0.5)"
  type: double?
  inputBinding:
    prefix: --cutoff
- id: in_windows
  doc: "Set these flags to print information for ``windows\" and/or\n``loci\" in the\
    \ output. By default, both single windows and\ncombined loci are printed."
  type: boolean?
  inputBinding:
    prefix: --windows
- id: in_header
  doc: "Print a header explaining the fields of the output (see below\nfor a detailed\
    \ description of the fields)."
  type: boolean?
  inputBinding:
    prefix: --header
- id: in_html
  doc: "Generates HTML formatted output of the results in the\nsubdirectory \"results\"\
    . For this option to work you need to have\ninstalled ghostscript and a few programs\
    \ from the ViennaRNA\npackage. More precisely you need the following executables\
    \ in\nyour PATH: \"gs\", \"RNAalifold\", \"colorrna.pl\", \"coloraln.pl\".\nAlternatively\
    \ you can adjust the locations of these programs\ndirectly in the \"rnazCluster.pl\"\
    \ script. Please note that if you\nuse this option the program will get very slow\
    \ because the\nfigures have to be generated. It is also important that you have\n\
    run RNAz with the \"--show-gaps\" option!"
  type: File?
  inputBinding:
    prefix: --html
- id: in_html_dir
  doc: 'Name of directory where HTML pages are stored. Default: results'
  type: boolean?
  inputBinding:
    prefix: --html-dir
- id: in_man
  doc: Prints a detailed manual page and exits.
  type: boolean?
  inputBinding:
    prefix: --man
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_html
  doc: "Generates HTML formatted output of the results in the\nsubdirectory \"results\"\
    . For this option to work you need to have\ninstalled ghostscript and a few programs\
    \ from the ViennaRNA\npackage. More precisely you need the following executables\
    \ in\nyour PATH: \"gs\", \"RNAalifold\", \"colorrna.pl\", \"coloraln.pl\".\nAlternatively\
    \ you can adjust the locations of these programs\ndirectly in the \"rnazCluster.pl\"\
    \ script. Please note that if you\nuse this option the program will get very slow\
    \ because the\nfigures have to be generated. It is also important that you have\n\
    run RNAz with the \"--show-gaps\" option!"
  type: File?
  outputBinding:
    glob: $(inputs.in_html)
hints: []
cwlVersion: v1.1
baseCommand:
- rnazCluster.pl
