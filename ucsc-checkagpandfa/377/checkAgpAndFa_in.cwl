class: CommandLineTool
id: checkAgpAndFa_in.fa.cwl
inputs:
- id: in_agp
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- checkAgpAndFa
- in.fa
