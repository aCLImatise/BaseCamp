class: CommandLineTool
id: vcf_group_multiline.py.cwl
inputs:
- id: vcf
  doc: 'VCF input (default: stdin)'
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- vcf_group_multiline.py
