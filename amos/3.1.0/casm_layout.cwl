class: CommandLineTool
id: casm_layout.cwl
inputs:
- id: delta_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: b
  doc: ''
  type: string
  inputBinding:
    prefix: -b
outputs: []
cwlVersion: v1.1
baseCommand:
- casm-layout
