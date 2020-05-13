class: CommandLineTool
id: update_info.py.cwl
inputs:
- id: vcf
  doc: 'VCF input (default: stdin)'
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- update_info.py
