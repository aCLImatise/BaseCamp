class: CommandLineTool
id: mmseqs_convertmsa.cwl
inputs:
- id: in_identifier_field
  doc: '1               Field from STOCKHOLM comments for choosing the MSA identifier:
    0: ID, 1: AC. If the respective comment does not exist, the name of the first
    sequence will become the identifier.'
  type: boolean?
  inputBinding:
    prefix: --identifier-field
- id: in_verbosity_level_nothing
  doc: '3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info'
  type: boolean?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mmseqs
- convertmsa
