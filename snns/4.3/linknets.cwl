class: CommandLineTool
id: linknets.cwl
inputs:
- id: in_units
  doc: use copies of input units
  type: boolean
  inputBinding:
    prefix: -inunits
- id: in_connect
  doc: fully connect with <n> input units
  type: string
  inputBinding:
    prefix: -inconnect
- id: direct
  doc: connect input with output one-to-one
  type: boolean
  inputBinding:
    prefix: -direct
- id: out_connect
  doc: fully connect to <n> output units
  type: string
  inputBinding:
    prefix: -outconnect
- id: in_connect
  doc: not be used together
  type: string
  inputBinding:
    prefix: -inconnect
outputs: []
cwlVersion: v1.1
baseCommand:
- linknets
