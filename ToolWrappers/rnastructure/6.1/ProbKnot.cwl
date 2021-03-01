class: CommandLineTool
id: ProbKnot.cwl
inputs:
- id: in_dna
  doc: "This flag only matters if the input file is a sequence file or an ensemble\n\
    structure file and has been specified as such. Specify that the sequence is\n\
    DNA, and DNA parameters are to be used.\nDefault is to use RNA parameters."
  type: boolean?
  inputBinding:
    prefix: --DNA
- id: in_ensemble
  doc: "Identify the input file format as an ensemble ctructure file. NOTE: all\n\
    structures in the file must have the same sequence."
  type: boolean?
  inputBinding:
    prefix: --ensemble
- id: in_sequence
  doc: Identify the input file format as a sequence file.
  type: boolean?
  inputBinding:
    prefix: --sequence
- id: in_iterations
  doc: "Specify the number of iterations the calculation will undergo.\nDefault is\
    \ 1 iteration."
  type: boolean?
  inputBinding:
    prefix: --iterations
- id: in_minimum
  doc: "Specify the minimum length accepted for a helix.\nDefault is 3 base pairs.\n"
  type: boolean?
  inputBinding:
    prefix: --minimum
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
- ProbKnot
