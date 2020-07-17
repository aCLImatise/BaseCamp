class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/finestructure.cwl
inputs:
- id: data_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: initial_popfile
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- finestructure
