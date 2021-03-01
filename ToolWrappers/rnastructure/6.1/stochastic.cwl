class: CommandLineTool
id: stochastic.cwl
inputs:
- id: in_dna
  doc: "This flag only matters if the input file is a sequence file and has been\n\
    specified as such. Specify that the sequence is DNA, and DNA parameters are\n\
    to be used.\nDefault is to use RNA parameters."
  type: boolean?
  inputBinding:
    prefix: --DNA
- id: in_sequence
  doc: Identify the input file format as a sequence file.
  type: boolean?
  inputBinding:
    prefix: --sequence
- id: in_ensemble
  doc: "Specify the ensemble size.\nDefault is 1000 structures."
  type: boolean?
  inputBinding:
    prefix: --ensemble
- id: in_seed
  doc: "Specify the random seed.\nDefault is 1234.\n"
  type: boolean?
  inputBinding:
    prefix: --seed
- id: in_specified_dot
  doc: <ct file>
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- stochastic
