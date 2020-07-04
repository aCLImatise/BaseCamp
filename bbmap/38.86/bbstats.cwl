class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bbstats.sh.cwl
inputs:
- id: stats_dots_h
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- bbstats.sh
