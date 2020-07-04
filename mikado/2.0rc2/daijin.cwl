class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/daijin.cwl
inputs:
- id: a
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: directed
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: acyclic
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: pipeline
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: for
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: gene
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: model
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: reconstruction
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: from
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: rna
  doc: ''
  type: string
  inputBinding:
    position: 9
- id: seq
  doc: ''
  type: string
  inputBinding:
    position: 10
- id: data_dot
  doc: ''
  type: string
  inputBinding:
    position: 11
outputs: []
cwlVersion: v1.1
baseCommand:
- daijin
