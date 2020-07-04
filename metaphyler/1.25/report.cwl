class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/report.pl.cwl
inputs:
- id: merge
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: multiple
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: taxonomy
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: profile
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
- id: table_dot
  doc: ''
  type: string
  inputBinding:
    position: 7
outputs: []
cwlVersion: v1.1
baseCommand:
- report.pl
