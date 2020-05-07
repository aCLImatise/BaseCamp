class: CommandLineTool
id: vsnp_group_reporter.py.cwl
inputs:
- id: prog
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: vcf
  doc: ''
  type: string
  inputBinding:
    prefix: -vcf
- id: r
  doc: ''
  type: string
  inputBinding:
    prefix: -r
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- vsnp_group_reporter.py
