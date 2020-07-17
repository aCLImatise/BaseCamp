class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/pipits_getsamplelistfromfasta.cwl
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
- id: creates
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: var_3
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: sample
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: list
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 4
- id: from
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: var_8
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: fast_a
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: sequences_dot
  doc: ''
  type: string
  inputBinding:
    position: 8
outputs: []
cwlVersion: v1.1
baseCommand:
- pipits_getsamplelistfromfasta
