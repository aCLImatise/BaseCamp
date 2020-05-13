class: CommandLineTool
id: ecoPCR.cwl
inputs:
- id: oligo1
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: oligo2
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: d
  doc: ''
  type: string
  inputBinding:
    prefix: -d
- id: l
  doc: ''
  type: string
  inputBinding:
    prefix: -l
- id: l
  doc: ''
  type: string
  inputBinding:
    prefix: -L
- id: e
  doc: ''
  type: string
  inputBinding:
    prefix: -e
- id: r
  doc: ''
  type: string
  inputBinding:
    prefix: -r
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: k
  doc: ''
  type: boolean
  inputBinding:
    prefix: -k
outputs: []
cwlVersion: v1.1
baseCommand:
- ecoPCR
