class: CommandLineTool
id: randfold_number of randomizations.cwl
inputs:
- id: method
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: filename
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: number_of_randomization_s
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- randfold
- number of randomizations
