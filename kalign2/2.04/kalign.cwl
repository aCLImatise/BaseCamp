class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/kalign.cwl
inputs:
- id: k_align_two
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: outfile
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- kalign
