class: CommandLineTool
id: pslMap.cwl
inputs:
- id: in_psl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: map_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: out_psl
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: verbose
  doc: 2 - show each overlap and the mapping
  type: string
  inputBinding:
    prefix: '- verbose'
outputs: []
cwlVersion: v1.1
baseCommand:
- pslMap
