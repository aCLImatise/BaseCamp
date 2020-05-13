class: CommandLineTool
id: fermi_contrast.cwl
inputs:
- id: idx1fmd
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: idx1rank
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: 1_2sub
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: idx2fmd
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: idx2rank
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: 2_1sub
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: o
  doc: minimum occurrence [3]
  type: long
  inputBinding:
    prefix: -o
- id: t
  doc: number of threads [1]
  type: long
  inputBinding:
    prefix: -t
- id: k
  doc: k-mer length [55]
  type: long
  inputBinding:
    prefix: -k
outputs: []
cwlVersion: v1.1
baseCommand:
- fermi
- contrast
