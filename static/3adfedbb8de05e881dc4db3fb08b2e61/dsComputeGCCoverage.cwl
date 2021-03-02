class: CommandLineTool
id: dsComputeGCCoverage.cwl
inputs:
- id: in_input
  doc: "Fasta files from which you want the GC content to be\ncalculated."
  type: string[]
  inputBinding:
    prefix: --input
- id: in_window_size
  doc: "Size of the window used to binify the genome and\ncalculate the GC content.\
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
- id: in_genome_two_dot_fa
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_genome_two
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
- dsComputeGCCoverage
