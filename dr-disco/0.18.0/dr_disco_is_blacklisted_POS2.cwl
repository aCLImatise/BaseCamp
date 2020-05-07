class: CommandLineTool
id: dr_disco_is_blacklisted_POS2.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: pos1
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: pos2
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- dr-disco
- is-blacklisted
- POS2
