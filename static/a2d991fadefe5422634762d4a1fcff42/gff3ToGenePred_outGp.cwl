class: CommandLineTool
id: gff3ToGenePred_outGp.cwl
inputs:
- id: ingff3
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
- outGp
