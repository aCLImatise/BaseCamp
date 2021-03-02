class: CommandLineTool
id: makemat.cwl
inputs:
- id: in_database_name_stdin
  doc: "Database name for profile database [File In]\ndefault = stdin"
  type: boolean?
  inputBinding:
    prefix: -P
- id: in_cost_open_default
  doc: "Cost to open a gap [Integer]\ndefault = 11"
  type: boolean?
  inputBinding:
    prefix: -G
- id: in_cost_extend_default
  doc: "Cost to extend a gap [Integer]\ndefault = 1"
  type: boolean?
  inputBinding:
    prefix: -E
- id: in_underlying_matrix_default
  doc: "Underlying Matrix [String]\ndefault = BLOSUM62"
  type: boolean?
  inputBinding:
    prefix: -U
- id: in_underlying_sequence_database
  doc: "Underlying sequence database used to make profiles [String]\ndefault = nr"
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_effective_length_profile
  doc: "Effective length of the profile database (0 for length of -d option) [Integer]\n\
    default = 0"
  type: boolean?
  inputBinding:
    prefix: -z
- id: in_scaling_factor_matrix
  doc: "Scaling factor for  matrix outputs to avoid round-off problems [Real]\ndefault\
    \ = 100.0"
  type: boolean?
  inputBinding:
    prefix: -S
- id: in_print_help_overrides
  doc: "Print help; overrides all other arguments [T/F]\ndefault = F\n"
  type: boolean?
  inputBinding:
    prefix: -H
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- makemat
