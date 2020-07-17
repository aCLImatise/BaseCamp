class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/AnalyseSeqs.cwl
inputs:
- id: x
  doc: ''
  type: boolean
  inputBinding:
    prefix: -X
- id: q
  doc: ''
  type: boolean
  inputBinding:
    prefix: -Q
- id: bsw_nm
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- AnalyseSeqs
