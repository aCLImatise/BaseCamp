class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/countsam.cwl
inputs:
- id: in_file_dots_am
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: ref_flat_dot_txt
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- countsam
