class: CommandLineTool
id: dr_disco_is_blacklisted_OPTIONS_POS2.cwl
inputs:
- id: pos1
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: pos2
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- dr-disco
- is-blacklisted
- OPTIONS
- POS2
