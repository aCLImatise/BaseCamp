class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/pairs_triplet_dist.cwl
inputs:
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: filename_one
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: filename_two
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: output_filename
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- pairs_triplet_dist
