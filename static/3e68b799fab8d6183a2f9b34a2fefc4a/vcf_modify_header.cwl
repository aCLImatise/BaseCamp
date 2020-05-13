class: CommandLineTool
id: vcf_modify_header.py.cwl
inputs:
- id: vcf
  doc: 'VCF input (default: stdin)'
  type: string
  inputBinding:
    position: 0
- id: id
  doc: field id
  type: string
  inputBinding:
    prefix: --id
- id: category
  doc: INFO, FORMAT, FILTER
  type: string
  inputBinding:
    prefix: --category
- id: type
  doc: Number, String, Float, Integer
  type: string
  inputBinding:
    prefix: --type
- id: number
  doc: integer, A, R, G, or .
  type: string
  inputBinding:
    prefix: --number
- id: description
  doc: description
  type: string
  inputBinding:
    prefix: --description
outputs: []
cwlVersion: v1.1
baseCommand:
- vcf_modify_header.py
