class: CommandLineTool
id: rnazCluster.pl.cwl
inputs:
- id: in_cut_off
  doc: "Only consider hits with RNAz class probablility P>X\n(Default:0.5)"
  type: double
  inputBinding:
    prefix: --cutoff
- id: in_windows
  doc: "-l, --loci\nSet these flags to print information for ``windows\" and/or\n\
    ``loci\" in the output. By default, both single windows and\ncombined loci are\
    \ printed.\n-d, --header\nPrint a header explaining the fields of the output (see\
    \ below\nfor a detailed description of the fields).\n--html  Generates HTML formatted\
    \ output of the results in the\nsubdirectory \"results\". For this option to work\
    \ you need to have\ninstalled ghostscript and a few programs from the ViennaRNA\n\
    package. More precisely you need the following executables in\nyour PATH: \"gs\"\
    , \"RNAalifold\", \"colorrna.pl\", \"coloraln.pl\".\nAlternatively you can adjust\
    \ the locations of these programs\ndirectly in the \"rnazCluster.pl\" script.\
    \ Please note that if you\nuse this option the program will get very slow because\
    \ the\nfigures have to be generated. It is also important that you have\nrun RNAz\
    \ with the \"--show-gaps\" option!\n--html-dir\nName of directory where HTML pages\
    \ are stored. Default: results\n-v, --version\nPrints version information and\
    \ exits.\n-h, --help\nPrints a short help message and exits.\n--man   Prints a\
    \ detailed manual page and exits.\n"
  type: File
  inputBinding:
    prefix: --windows
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_windows
  doc: "-l, --loci\nSet these flags to print information for ``windows\" and/or\n\
    ``loci\" in the output. By default, both single windows and\ncombined loci are\
    \ printed.\n-d, --header\nPrint a header explaining the fields of the output (see\
    \ below\nfor a detailed description of the fields).\n--html  Generates HTML formatted\
    \ output of the results in the\nsubdirectory \"results\". For this option to work\
    \ you need to have\ninstalled ghostscript and a few programs from the ViennaRNA\n\
    package. More precisely you need the following executables in\nyour PATH: \"gs\"\
    , \"RNAalifold\", \"colorrna.pl\", \"coloraln.pl\".\nAlternatively you can adjust\
    \ the locations of these programs\ndirectly in the \"rnazCluster.pl\" script.\
    \ Please note that if you\nuse this option the program will get very slow because\
    \ the\nfigures have to be generated. It is also important that you have\nrun RNAz\
    \ with the \"--show-gaps\" option!\n--html-dir\nName of directory where HTML pages\
    \ are stored. Default: results\n-v, --version\nPrints version information and\
    \ exits.\n-h, --help\nPrints a short help message and exits.\n--man   Prints a\
    \ detailed manual page and exits.\n"
  type: File
  outputBinding:
    glob: $(inputs.in_windows)
cwlVersion: v1.1
baseCommand:
- rnazCluster.pl
