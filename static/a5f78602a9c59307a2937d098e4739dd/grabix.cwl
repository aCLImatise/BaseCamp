class: CommandLineTool
id: grabix.cwl
inputs:
- id: index
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: bg_zf_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- grabix
