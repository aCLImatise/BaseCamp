class: CommandLineTool
id: vcf_paste.py.cwl
inputs:
- id: m
  doc: ''
  type: string
  inputBinding:
    prefix: -m
- id: q
  doc: ''
  type: boolean
  inputBinding:
    prefix: -q
- id: f
  doc: ''
  type: string
  inputBinding:
    prefix: -f
outputs: []
cwlVersion: v1.1
baseCommand:
- vcf_paste.py
