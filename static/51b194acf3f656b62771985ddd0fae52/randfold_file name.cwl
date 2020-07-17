class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/randfold_file name.cwl
inputs:
- id: rand_fold
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: method
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: file_name
  doc: ''
  type: File
  inputBinding:
    position: 2
- id: number_of_randomization_s
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- randfold
- file name
