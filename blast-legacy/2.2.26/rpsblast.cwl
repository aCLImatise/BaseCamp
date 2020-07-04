class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/rpsblast.cwl
inputs:
- id: alignment_view_options
  doc: 'alignment view options:'
  type: boolean
  inputBinding:
    prefix: -m
outputs: []
cwlVersion: v1.1
baseCommand:
- rpsblast
