class: CommandLineTool
id: alignment_stator.cwl
inputs:
- id: b
  doc: "pause for batch runs\e[32;1m"
  type: string
  inputBinding:
    prefix: -b
outputs: []
cwlVersion: v1.1
baseCommand:
- alignment_stator
