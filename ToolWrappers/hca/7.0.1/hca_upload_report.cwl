class: CommandLineTool
id: hca_upload_report.cwl
inputs:
- id: in_env
  doc: "Environment the upload area was created in (default is\nbased on currently\
    \ selected upload area)"
  type: string?
  inputBinding:
    prefix: --env
- id: in_uuid
  doc: "Full UUID of an upload area (default is based on\ncurrently selected upload\
    \ area)"
  type: string?
  inputBinding:
    prefix: --uuid
- id: in_output_file_name
  doc: "Name of output file (default is upload area name)\n"
  type: File?
  inputBinding:
    prefix: --output_file_name
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_name
  doc: "Name of output file (default is upload area name)\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file_name)
hints: []
cwlVersion: v1.1
baseCommand:
- hca
- upload
- report
