class: CommandLineTool
id: ../../../vsnp_group_reporter.py.cwl
inputs:
- id: vcf
  doc: 'Required: vcf file'
  type: string
  inputBinding:
    prefix: --vcf
- id: ref_option
  doc: 'Required: reference option'
  type: string
  inputBinding:
    prefix: --ref_option
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: prog
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- vsnp_group_reporter.py
