class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/cram_index.cwl
inputs:
- id: filename_dot_cram
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: filename_dot_cram_dot_cra_i
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- cram_index
