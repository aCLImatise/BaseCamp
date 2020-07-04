class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/mergefastq_p.cwl
inputs:
- id: merge
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: separate
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: mate
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: pair
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: files
  doc: ''
  type: File
  inputBinding:
    position: 4
- id: into
  doc: ''
  type: long
  inputBinding:
    position: 5
- id: one
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 7
outputs: []
cwlVersion: v1.1
baseCommand:
- mergefastq-p
