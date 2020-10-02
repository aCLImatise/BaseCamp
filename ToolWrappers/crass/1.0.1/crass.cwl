class: CommandLineTool
id: crass.cwl
inputs:
- id: in_loglevel
  doc: <INT>   Output a log file and set a log level [1 - 4]
  type: boolean
  inputBinding:
    prefix: --logLevel
- id: in_outdir
  doc: '<DIR>   Output directory [default: .]'
  type: Directory
  inputBinding:
    prefix: --outDir
- id: in_log_to_screen
  doc: Print the logging information to screen rather than a file
  type: boolean
  inputBinding:
    prefix: --logToScreen
- id: in_mind_r
  doc: "<INT>   Minimim length of the direct repeat\nto search for [Default: 23]"
  type: boolean
  inputBinding:
    prefix: --minDR
- id: in_max_dr
  doc: "<INT>   Maximim length of the direct repeat\nto search for [Default: 47]"
  type: boolean
  inputBinding:
    prefix: --maxDR
- id: in_min_num_repeats
  doc: "<INT>   Total number of direct repeats in a CRISPR for\nit to be considered\
    \ real [Default: 2]"
  type: boolean
  inputBinding:
    prefix: --minNumRepeats
- id: in_min_spacer
  doc: '<INT>   Minimim length of the spacer to search for [Default: 26]'
  type: boolean
  inputBinding:
    prefix: --minSpacer
- id: in_max_spacer
  doc: '<INT>   Maximim length of the spacer to search for [Default: 50]'
  type: boolean
  inputBinding:
    prefix: --maxSpacer
- id: in_window_length
  doc: "<INT>   The length of the search window. Can only be\na number between 6 -\
    \ 9 [Default: 8]"
  type: boolean
  inputBinding:
    prefix: --windowLength
- id: in_cov_cut_off
  doc: '<INT>   Remove groups with less than x spacers [Default: 3]'
  type: boolean
  inputBinding:
    prefix: --covCutoff
- id: in_km_er_count
  doc: "<INT>   The number of the kmers that need to be\nshared for clustering [Default:\
    \ 6]"
  type: boolean
  inputBinding:
    prefix: --kmerCount
- id: in_graph_node_len
  doc: '<INT>   Length of the kmers used to make crispr nodes [Default: 7]'
  type: boolean
  inputBinding:
    prefix: --graphNodeLen
- id: in_num_bins
  doc: "<INT>   The number of colour bins for the output graph.\nDefault is to have\
    \ as many colours as there are\ndifferent values for the coverage of Nodes in\
    \ the graph"
  type: boolean
  inputBinding:
    prefix: --numBins
- id: in_graph_colour
  doc: "<TYPE>   Defines the range of colours to use for the output graph\nthe different\
    \ types available are:\nred-blue, blue-red, green-red-blue, red-blue-green"
  type: boolean
  inputBinding:
    prefix: --graphColour
- id: in_long_description
  doc: 'Set if you want the spacer sequence printed along with the ID in the spacer
    graph. [Default: false]'
  type: boolean
  inputBinding:
    prefix: --longDescription
- id: in_show_singl_tons
  doc: 'Set if you want to print singleton spacers in the spacer graph [Default: false]'
  type: boolean
  inputBinding:
    prefix: --showSingltons
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: '<DIR>   Output directory [default: .]'
  type: Directory
  outputBinding:
    glob: $(inputs.in_outdir)
cwlVersion: v1.1
baseCommand:
- crass
