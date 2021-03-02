class: CommandLineTool
id: chromosomer_transfer_annotation.cwl
inputs:
- id: in_f
  doc: ''
  type: string?
  inputBinding:
    prefix: -f
- id: in_chromosome_r
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_transfer
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_map
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_annotation
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_output
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- chromosomer
- transfer
- annotation
