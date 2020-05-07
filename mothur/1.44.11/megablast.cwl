class: CommandLineTool
id: megablast.cwl
inputs:
- id: m
  doc: 'alignment view options:'
  type: boolean
  inputBinding:
    prefix: -m
- id: d
  doc: 'Type of output:'
  type: boolean
  inputBinding:
    prefix: -D
outputs: []
cwlVersion: v1.1
baseCommand:
- megablast
