class: CommandLineTool
id: hca_upload_status.cwl
inputs:
- id: in_env
  doc: "Environment the upload area was created in (default is based on\ncurrently\
    \ selected upload area)"
  type: string
  inputBinding:
    prefix: --env
- id: in_uuid
  doc: "Full UUID of an upload area (default is based on currently\nselected upload\
    \ area)\n"
  type: string
  inputBinding:
    prefix: --uuid
- id: in_filename
  doc: File name
  type: File
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
- status
