class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/genePredCheck.cwl
inputs:
- id: if
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: file_tbl
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: is
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: an
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: existing
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 5
outputs: []
cwlVersion: v1.1
baseCommand:
- genePredCheck
