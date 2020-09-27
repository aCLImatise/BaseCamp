class: CommandLineTool
id: getTargetsDef.cwl
inputs:
- id: in_files_to_tax_ids
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
- getTargetsDef
