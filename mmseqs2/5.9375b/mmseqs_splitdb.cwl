class: CommandLineTool
id: mmseqs_splitdb.cwl
inputs:
- id: split
  doc: 0               Splits input sets into N equally distributed chunks. The default
    value sets the best split automatically. createindex can only be used with split
    1.
  type: boolean
  inputBinding:
    prefix: --split
- id: v
  doc: '3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- mmseqs
- splitdb
