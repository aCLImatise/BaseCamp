class: CommandLineTool
id: nebulizer_remove_key.cwl
inputs:
- id: in_alias
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- nebulizer
- remove_key
