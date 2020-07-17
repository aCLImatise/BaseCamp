class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/motif_fit_B.cwl
inputs:
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
- id: d
  doc: ''
  type: string
  inputBinding:
    prefix: -d
- id: motif
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fit
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- motif
- fit
- B
