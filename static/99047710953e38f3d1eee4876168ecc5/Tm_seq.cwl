class: CommandLineTool
id: ../../../Tm_seq.cwl
inputs:
- id: uncorrected
  doc: ''
  type: boolean
  inputBinding:
    prefix: --uncorrected
- id: d
  doc: ''
  type: string
  inputBinding:
    prefix: -d
- id: na
  doc: ''
  type: string
  inputBinding:
    prefix: --na
- id: mg
  doc: ''
  type: string
  inputBinding:
    prefix: --mg
- id: dntp
  doc: ''
  type: string
  inputBinding:
    prefix: --dntp
- id: tm
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- Tm
- seq
