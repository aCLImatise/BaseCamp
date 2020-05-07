class: CommandLineTool
id: toAmos.cwl
inputs:
- id: use
  doc: numbers in FRG files
  type: string
  inputBinding:
    prefix: '- use'
- id: scaffold
  doc: in Arachne .links format
  type: string
  inputBinding:
    prefix: '- scaffold'
- id: scaffold
  doc: in Bambus .scaff format
  type: string
  inputBinding:
    prefix: '- scaffold'
- id: read
  doc: information
  type: string
  inputBinding:
    prefix: '- read'
- id: read
  doc: information
  type: string
  inputBinding:
    prefix: '- read'
- id: tigr_style
  doc: .pos position file
  type: string
  inputBinding:
    prefix: '- TIGR-style'
- id: start
  doc: AMOS internal IDs at this number
  type: long
  inputBinding:
    prefix: '- start'
outputs: []
cwlVersion: v1.1
baseCommand:
- toAmos
