class: CommandLineTool
id: ../../../vcf_modify_header.py.cwl
inputs:
- id: in_id
  doc: field id
  type: string
  inputBinding:
    prefix: --id
- id: in_category
  doc: INFO, FORMAT, FILTER
  type: string
  inputBinding:
    prefix: --category
- id: in_type
  doc: Number, String, Float, Integer
  type: double
  inputBinding:
    prefix: --type
- id: in_number
  doc: integer, A, R, G, or .
  type: long
  inputBinding:
    prefix: --number
- id: in_description
  doc: "description\n"
  type: string
  inputBinding:
    prefix: --description
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- vcf_modify_header.py
