class: CommandLineTool
id: removeDuplicate.cwl
inputs:
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: gff3
  doc: ''
  type: boolean
  inputBinding:
    prefix: -gff3
outputs: []
cwlVersion: v1.1
baseCommand:
- removeDuplicate
