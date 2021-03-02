class: CommandLineTool
id: copymat.cwl
inputs:
- id: in_database_matrix_profiles
  doc: "Database for matrix profiles [File In]\ndefault = stdin"
  type: boolean?
  inputBinding:
    prefix: -P
- id: in_print_help_overrides
  doc: "Print help; overrides all other arguments [T/F]\ndefault = F"
  type: boolean?
  inputBinding:
    prefix: -H
- id: in_create_rps_mem
  doc: "Create RPS mem map file(s) [T/F]\ndefault = T"
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_threshold_extending_hits
  doc: "Threshold for extending hits for RPS database [Real]\ndefault = 11"
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_word_size_rps
  doc: "Word size for RPS database [Integer]\ndefault = 3\n"
  type: boolean?
  inputBinding:
    prefix: -W
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- copymat
