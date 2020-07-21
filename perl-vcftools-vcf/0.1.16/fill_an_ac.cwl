class: CommandLineTool
id: ../../../fill_an_ac.cwl
inputs:
- id: in_dot_vcf
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_dot_vcf
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- fill-an-ac
