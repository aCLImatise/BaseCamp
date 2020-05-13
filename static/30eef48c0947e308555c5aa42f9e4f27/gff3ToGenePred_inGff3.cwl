class: CommandLineTool
id: gff3ToGenePred_inGff3.cwl
inputs:
- id: out_gp
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- gff3ToGenePred
- inGff3
