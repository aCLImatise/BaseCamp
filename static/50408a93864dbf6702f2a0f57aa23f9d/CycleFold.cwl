class: CommandLineTool
id: CycleFold.cwl
inputs:
- id: in_big_loops
  doc: "Toggle whether large hairpins and internal loops are permitted in the\nstructure.\n\
    Default: off"
  type: boolean?
  inputBinding:
    prefix: --bigloops
- id: in_fast_a_constraints
  doc: "Specify that the input fasta file contains secondary structure constraints\n\
    (in dot-bracket format) to be applied to each structure.\nDefault: off."
  type: boolean?
  inputBinding:
    prefix: --fastaConstraints
- id: in_max_expect
  doc: Specify that a MaxExpect calculation should be performed.
  type: boolean?
  inputBinding:
    prefix: --maxExpect
- id: in_partition_function
  doc: Specify that pair probabilities should be printed.
  type: boolean?
  inputBinding:
    prefix: --partitionFunction
- id: in_seq_format
  doc: "Indicate that the input file is a SEQ formatted sequence (rather than a\n\
    FASTA, which is the default)."
  type: boolean?
  inputBinding:
    prefix: --seqFormat
- id: in_turbo
  doc: Specify that a TurboFold calculation should be performed.
  type: boolean?
  inputBinding:
    prefix: --turbo
- id: in_un_pairing_constraints
  doc: "Toggle whether restraints should be treated as unpairing constraints.\nDefault:\
    \ off."
  type: boolean?
  inputBinding:
    prefix: --unpairingConstraints
- id: in_constraint_file
  doc: Specify a constraint file to be applied (in constraint file format).
  type: boolean?
  inputBinding:
    prefix: --constraintFile
- id: in_constraint_ct
  doc: Specify a constraint file to be applied (in ct format).
  type: boolean?
  inputBinding:
    prefix: --constraintCt
- id: in_gamma
  doc: "Set gamma, the weighting parameter for extrinsic information inthe turbo\n\
    calculation."
  type: boolean?
  inputBinding:
    prefix: --gamma
- id: in_iterations
  doc: "Set the number of iterations for the turbo calculation.\n"
  type: boolean?
  inputBinding:
    prefix: --iterations
- id: in_sequence
  doc: ''
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
- CycleFold
