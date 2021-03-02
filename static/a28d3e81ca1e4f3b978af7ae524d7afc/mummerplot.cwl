class: CommandLineTool
id: mummerplot.cwl
inputs:
- id: in_breaklen_highlight_alignments
  doc: "|breaklen     Highlight alignments with breakpoints further than\nbreaklen\
    \ nucleotides from the nearest sequence end"
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_depend
  doc: Print the dependency information and exit
  type: boolean?
  inputBinding:
    prefix: --depend
- id: in_filter
  doc: "Only display .delta alignments which represent the \"best\"\nhit to any particular\
    \ spot on either sequence, i.e. a\none-to-one mapping of reference and query subsequences"
  type: boolean?
  inputBinding:
    prefix: --filter
- id: in_layout
  doc: "Layout a .delta multiplot in an intelligible fashion,\nthis option requires\
    \ the -R -Q options"
  type: boolean?
  inputBinding:
    prefix: --layout
- id: in_fat
  doc: Layout sequences using fattest alignment only
  type: boolean?
  inputBinding:
    prefix: --fat
- id: in_prefix_set_prefix
  doc: "|prefix       Set the prefix of the output files (default 'out')"
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_rv
  doc: Reverse video for x11 plots
  type: boolean?
  inputBinding:
    prefix: -rv
- id: in_idr_plot_id
  doc: '|IdR          Plot a particular reference sequence ID on the X-axis'
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_idq_plot_particular
  doc: '|IdQ          Plot a particular query sequence ID on the Y-axis'
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_rfile_plot_set
  doc: '|Rfile        Plot an ordered set of reference sequences from Rfile'
  type: boolean?
  inputBinding:
    prefix: -R
- id: in_qfile_plot_set
  doc: "|Qfile        Plot an ordered set of query sequences from Qfile\nRfile/Qfile\
    \ Can either be the original DNA multi-FastA\nfiles or lists of sequence IDs,\
    \ lens and dirs [ /+/-]"
  type: boolean?
  inputBinding:
    prefix: -Q
- id: in_size_set_size
  doc: '|size         Set the output size to small, medium or large'
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_medium
  doc: (default 'small')
  type: boolean?
  inputBinding:
    prefix: --medium
- id: in_snp
  doc: Highlight SNP locations in each alignment
  type: boolean?
  inputBinding:
    prefix: --SNP
- id: in_terminal_set_terminal
  doc: '|terminal     Set the output terminal to x11, postscript or png'
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_postscript
  doc: (default 'x11')
  type: boolean?
  inputBinding:
    prefix: --postscript
- id: in_xrange_set_xrange
  doc: "|xrange       Set the xrange for the plot '[min:max]'"
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_yrange_set_yrange
  doc: "|yrange       Set the yrange for the plot '[min:max]'"
  type: boolean?
  inputBinding:
    prefix: -y
- id: in_match_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mummerplot
