class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/load_overlaps.cwl
inputs:
- id: b
  doc: ''
  type: string
  inputBinding:
    prefix: -b
- id: delta_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- load-overlaps
