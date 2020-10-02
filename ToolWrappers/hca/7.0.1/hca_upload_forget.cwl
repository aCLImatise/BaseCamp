class: CommandLineTool
id: hca_upload_forget.cwl
inputs:
- id: in_uuid_or_alias
  doc: Full or partial (alias) UUID of an upload area.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hca
- upload
- forget
