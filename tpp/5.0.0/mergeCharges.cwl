class: CommandLineTool
id: ../../../mergeCharges.pl.cwl
inputs:
- id: i
  doc: ''
  type: boolean
  inputBinding:
    prefix: -i
- id: o
  doc: ''
  type: boolean
  inputBinding:
    prefix: -o
- id: c
  doc: ''
  type: boolean
  inputBinding:
    prefix: -c
- id: oc
  doc: ''
  type: boolean
  inputBinding:
    prefix: -oc
outputs: []
cwlVersion: v1.1
baseCommand:
- mergeCharges.pl
