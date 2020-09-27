class: CommandLineTool
id: mummerplot.cwl
inputs:
- id: in_breaklen_highlight_alignments
  doc: "|breaklen     Highlight alignments with breakpoints further than\nbreaklen\
    \ nucleotides from the nearest sequence end"
  type: boolean
  inputBinding:
    prefix: -b
- id: in__coverage_generate
  doc: "--[no]coverage  Generate a reference coverage plot (default for .tiling)\n\
    --depend        Print the dependency information and exit\n-f\n--filter      \
    \  Only display .delta alignments which represent the \"best\"\nhit to any particular\
    \ spot on either sequence, i.e. a\none-to-one mapping of reference and query subsequences\n\
    -h\n--help          Display help information and exit\n-l\n--layout        Layout\
    \ a .delta multiplot in an intelligible fashion,\nthis option requires the -R\
    \ -Q options\n--fat           Layout sequences using fattest alignment only\n\
    -p|prefix       Set the prefix of the output files (default 'out')\n-rv      \
    \       Reverse video for x11 plots\n-r|IdR          Plot a particular reference\
    \ sequence ID on the X-axis\n-q|IdQ          Plot a particular query sequence\
    \ ID on the Y-axis\n-R|Rfile        Plot an ordered set of reference sequences\
    \ from Rfile\n-Q|Qfile        Plot an ordered set of query sequences from Qfile\n\
    Rfile/Qfile Can either be the original DNA multi-FastA\nfiles or lists of sequence\
    \ IDs, lens and dirs [ /+/-]\n-r|rport        Specify the port to send reference\
    \ ID and position on\nmouse double click in X11 plot window\n-q|qport        Specify\
    \ the port to send query IDs and position on mouse\ndouble click in X11 plot window\n\
    -s|size         Set the output size to small, medium or large\n--small --medium\
    \ --large (default 'small')\n-S\n--SNP           Highlight SNP locations in each\
    \ alignment\n-t|terminal     Set the output terminal to x11, postscript or png\n\
    --x11 --postscript --png (default 'x11')\n-t|title        Specify the gnuplot\
    \ plot title (default none)\n-x|xrange       Set the xrange for the plot '[min:max]'\n\
    -y|yrange       Set the yrange for the plot '[min:max]'\n-V\n--version       Display\
    \ the version information and exit\n"
  type: boolean
  inputBinding:
    prefix: -c
- id: in_match_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mummerplot
