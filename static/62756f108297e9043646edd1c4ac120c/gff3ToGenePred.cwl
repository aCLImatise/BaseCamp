class: CommandLineTool
id: ../../../gff3ToGenePred.cwl
inputs:
- id: in_gff_three
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_gp
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- gff3ToGenePred
