class: CommandLineTool
id: rpsblast.cwl
inputs:
- id: m
  doc: 'alignment view options:'
  type: boolean
  inputBinding:
    prefix: -m
outputs: []
cwlVersion: v1.1
baseCommand:
- rpsblast
