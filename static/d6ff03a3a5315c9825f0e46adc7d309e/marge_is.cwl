class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/marge_is.cwl
inputs:
- id: a
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: free
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: software
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: to
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: predict
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: key
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: regulated
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: genes
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: and
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: cis_regulatory
  doc: ''
  type: string
  inputBinding:
    position: 9
- id: regions
  doc: ''
  type: string
  inputBinding:
    position: 10
- id: in
  doc: ''
  type: string
  inputBinding:
    position: 11
- id: human
  doc: ''
  type: string
  inputBinding:
    position: 12
- id: or
  doc: ''
  type: string
  inputBinding:
    position: 13
- id: mouse_dot
  doc: ''
  type: string
  inputBinding:
    position: 14
outputs: []
cwlVersion: v1.1
baseCommand:
- marge
- is
