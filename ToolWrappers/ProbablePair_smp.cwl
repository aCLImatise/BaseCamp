class: CommandLineTool
id: ProbablePair_smp.cwl
inputs:
- id: in_dna
  doc: "This flag only matters if the input file is a sequence file and has been\n\
    specified as such. Specify that the sequence is DNA, and DNA parameters are\n\
    to be used.\nDefault is to use RNA parameters."
  type: boolean
  inputBinding:
    prefix: --DNA
- id: in_sequence
  doc: Identify the input file format as a sequence file.
  type: boolean
  inputBinding:
    prefix: --sequence
- id: in_threshold
  doc: "The threshold at which pairs should be included in a structure. This should\n\
    be expressed as a number: 0.5 <= x <= 1.0.\nDefault is 0, which signifies that\
    \ structures should be generated at\nmultiple thresholds: >= 0.99, >= 0.97, >=\
    \ 0.95, >= 0.90, >= 0.80, >= 0.70,\n>= 0.60, and >= 0.50.\n"
  type: boolean
  inputBinding:
    prefix: --threshold
- id: in_specified_dot
  doc: <ct file>
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ProbablePair-smp
