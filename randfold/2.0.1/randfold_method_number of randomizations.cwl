class: CommandLineTool
id: randfold_method_number of randomizations.cwl
inputs:
- id: filename
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
- number of randomizations
