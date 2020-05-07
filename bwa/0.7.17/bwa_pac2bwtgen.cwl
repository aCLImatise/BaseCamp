class: CommandLineTool
id: bwa_pac2bwtgen.cwl
inputs:
- id: bwt_gen
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_pac
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: out_bwt
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- bwa
- pac2bwtgen
