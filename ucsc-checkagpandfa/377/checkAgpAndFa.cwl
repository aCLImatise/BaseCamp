class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/checkAgpAndFa.cwl
inputs:
- id: exclude
  doc: "- Ignore seq (e.g. chrM for which we usually get sequence from GenBank but\
    \ don't have AGP)"
  type: string
  inputBinding:
    prefix: -exclude
- id: in_dot_agp
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- checkAgpAndFa
