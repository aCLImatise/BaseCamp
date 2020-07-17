class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/randfold_method.cwl
inputs:
- id: file_name
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: number_of_randomization_s
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- randfold
- method
