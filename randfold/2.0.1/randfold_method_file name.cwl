class: CommandLineTool
id: randfold_method_file name.cwl
inputs:
- id: number_of_randomization_s
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- randfold
- method
- file name
