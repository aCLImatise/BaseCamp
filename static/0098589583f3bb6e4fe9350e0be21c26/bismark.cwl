class: CommandLineTool
id: bismark.cwl
inputs:
- id: default
  doc: old_flag
  type: string
  inputBinding:
    position: 0
- id: solexa_quals
  doc: .
  type: boolean
  inputBinding:
    prefix: --solexa-quals
outputs: []
cwlVersion: v1.1
baseCommand:
- bismark
