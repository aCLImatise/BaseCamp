class: CommandLineTool
id: fill_an_ac.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_vcf
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: out_vcf
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- fill-an-ac
