class: CommandLineTool
id: hca_upload_select.cwl
inputs:
- id: in_uri_or_alias
  doc: S3 URI of an upload area, or short alias.
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
- select
