class: CommandLineTool
id: biopet_seattleseqkit.cwl
inputs:
- id: seattle_seq_kit
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: tool_name
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: tool
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: args
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- biopet-seattleseqkit
