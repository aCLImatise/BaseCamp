class: CommandLineTool
id: linknets.cwl
inputs:
- id: in_in_units
  doc: use copies of input units
  type: boolean?
  inputBinding:
    prefix: -inunits
- id: in_in_connect
  doc: fully connect with <n> input units
  type: string?
  inputBinding:
    prefix: -inconnect
- id: in_direct
  doc: connect input with output one-to-one
  type: boolean?
  inputBinding:
    prefix: -direct
- id: in_out_connect
  doc: fully connect to <n> output units
  type: string?
  inputBinding:
    prefix: -outconnect
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- linknets
