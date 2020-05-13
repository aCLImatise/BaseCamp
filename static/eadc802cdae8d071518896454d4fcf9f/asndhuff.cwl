class: CommandLineTool
id: asndhuff.cwl
inputs:
- id: i
  doc: Input file [File In]
  type: boolean
  inputBinding:
    prefix: -i
- id: o
  doc: Output file [File Out]  Optional
  type: boolean
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- asndhuff
