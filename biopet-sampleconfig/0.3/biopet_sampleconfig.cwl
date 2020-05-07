class: CommandLineTool
id: biopet_sampleconfig.cwl
inputs:
- id: sample_config
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
- biopet-sampleconfig
