class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/estpost.entropy.cwl
inputs:
- id: in_file_one_dot_hdf_five
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_file_two_dot_hdf_five
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- estpost.entropy
