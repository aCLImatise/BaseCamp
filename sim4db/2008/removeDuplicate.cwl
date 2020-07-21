class: CommandLineTool
id: ../../../removeDuplicate.cwl
inputs:
- id: gff_three
  doc: ''
  type: boolean
  inputBinding:
    prefix: -gff3
- id: var_1
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: var_2
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- removeDuplicate
