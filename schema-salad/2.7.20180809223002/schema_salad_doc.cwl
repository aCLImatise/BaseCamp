class: CommandLineTool
id: ../../../schema_salad_doc.cwl
inputs:
- id: in_only
  doc: ''
  type: string
  inputBinding:
    prefix: --only
- id: in_redirect
  doc: ''
  type: string
  inputBinding:
    prefix: --redirect
- id: in_brand
  doc: ''
  type: string
  inputBinding:
    prefix: --brand
- id: in_brand_link
  doc: ''
  type: string
  inputBinding:
    prefix: --brandlink
- id: in_prim_type
  doc: ''
  type: string
  inputBinding:
    prefix: --primtype
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- schema-salad-doc
