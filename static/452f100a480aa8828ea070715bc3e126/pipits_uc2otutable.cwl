class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/pipits_uc2otutable.cwl
inputs:
- id: i
  doc: '[REQUIRED]'
  type: string
  inputBinding:
    prefix: -i
- id: o
  doc: '[REQUIRED]'
  type: string
  inputBinding:
    prefix: -o
- id: l
  doc: '[REQUIRED]'
  type: string
  inputBinding:
    prefix: -l
- id: reads
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: and
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: writes
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: each
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: entry
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: as
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: a
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: single
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: file_dot
  doc: ''
  type: File
  inputBinding:
    position: 8
outputs: []
cwlVersion: v1.1
baseCommand:
- pipits_uc2otutable
