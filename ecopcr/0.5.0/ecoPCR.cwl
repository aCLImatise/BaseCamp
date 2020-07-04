class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/ecoPCR.cwl
inputs:
- id: d
  doc: ''
  type: string
  inputBinding:
    prefix: -d
- id: var_1
  doc: ''
  type: string
  inputBinding:
    prefix: -l
- id: var_2
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
- id: oligo_one
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: oligo_two
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- ecoPCR
