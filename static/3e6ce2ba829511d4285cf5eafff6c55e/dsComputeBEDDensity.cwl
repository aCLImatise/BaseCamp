class: CommandLineTool
id: dsComputeBEDDensity.cwl
inputs:
- id: in_input
  doc: "BED files from which features density will be\ncalculated."
  type: string[]
  inputBinding:
    prefix: --input
- id: in_chrom_size
  doc: "A 2 columns tab-delimited file containing chromosome\nsizes, with one chromosome\
    \ per line."
  type: File?
  inputBinding:
    prefix: --chromSize
- id: in_window_size
  doc: "Size of the window used to binify the genome and\ncalculate bed files density.\
    \ Default: 1000."
  type: long?
  inputBinding:
    prefix: --windowSize
- id: in_output
  doc: "bedGraph file(s) output prefix name(s) ('.bedGraph' is\nautomatically added\
    \ at the end of the given prefix,\none bedGraph per input file).\n"
  type: string[]
  inputBinding:
    prefix: --output
- id: in_file_two_dot_bed
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_file_two
  doc: ''
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- dsComputeBEDDensity
