class: CommandLineTool
id: refgenie_getseq.cwl
inputs:
- id: in_genome_config
  doc: "Path to local genome configuration file. Optional if\nREFGENIE environment\
    \ variable is set."
  type: File
  inputBinding:
    prefix: --genome-config
- id: in_genome
  doc: Reference assembly ID, e.g. mm10.
  type: long
  inputBinding:
    prefix: --genome
- id: in_locus
  doc: "Coordinates of desired sequence; e.g.\n'chr1:50000-50200'.\n"
  type: long
  inputBinding:
    prefix: --locus
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- refgenie
- getseq
