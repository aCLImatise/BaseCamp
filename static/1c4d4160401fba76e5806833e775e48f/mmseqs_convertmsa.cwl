class: CommandLineTool
id: mmseqs_convertmsa.cwl
inputs:
- id: identifier_field
  doc: '1               Field from STOCKHOLM comments for choosing the MSA identifier:
    0: ID, 1: AC. If the respective comment does not exist, the name of the first
    sequence will become the identifier.'
  type: boolean
  inputBinding:
    prefix: --identifier-field
- id: v
  doc: '3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- mmseqs
- convertmsa
