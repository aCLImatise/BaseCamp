class: CommandLineTool
id: schema_salad_doc.cwl
inputs:
- id: in_redirect
  doc: ''
  type: string?
  inputBinding:
    prefix: --redirect
- id: in_only
  doc: ''
  type: string?
  inputBinding:
    prefix: --only
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- schema-salad-doc
