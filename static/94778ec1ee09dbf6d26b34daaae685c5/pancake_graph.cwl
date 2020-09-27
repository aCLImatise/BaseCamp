class: CommandLineTool
id: pancake_graph.cwl
inputs:
- id: in_pan_file
  doc: Name of PanCake Data Object File (required)
  type: File
  inputBinding:
    prefix: --panfile
- id: in_chrom_s
  doc: "Chromosomes in Output (by default all chromosomes\ncovered in PAN_FILE)"
  type: string[]
  inputBinding:
    prefix: --chroms
- id: in_starts
  doc: "Start positions (in same order as chromosomes),\nDEFAULT=1 on all chromosomes"
  type: string[]
  inputBinding:
    prefix: -starts
- id: in_stops
  doc: "Stop positions (in same order as chromosomes),\nDEFAULT=length of chromosomes"
  type: string[]
  inputBinding:
    prefix: -stops
- id: in_max_nodes
  doc: "Maximal number of nodes in output graph.\n(DEFAULT=10,000): if exceeded, PanCake\
    \ will warn and\ninterrupt!"
  type: long
  inputBinding:
    prefix: --max_nodes
- id: in_max_edges
  doc: "Maximal number of edges in output graph.\n(DEFAULT=10,000): if exceeded, PanCake\
    \ will warn and\ninterrupt!"
  type: long
  inputBinding:
    prefix: --max_edges
- id: in_max_entries
  doc: "Shared features are truncated in output if number of\ncontained feature instances\
    \ > MAX_ENTRIES (DEFAULT:\nMAX_ENTRIES=50)"
  type: long
  inputBinding:
    prefix: --max_entries
- id: in_all
  doc: "if set, all chromosomes contained in PAN_FILE appear\nin output (irrespective\
    \ to CHROMS), DEFAULT=False"
  type: boolean
  inputBinding:
    prefix: -all
- id: in_regions
  doc: "if set, only specified regions are shown in output\n(DEFAULT=False), ignored\
    \ if -all is set"
  type: boolean
  inputBinding:
    prefix: -regions
- id: in_output
  doc: "output DOT file (DEFAULT: STDOUT)\n"
  type: File
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "output DOT file (DEFAULT: STDOUT)\n"
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- pancake
- graph
