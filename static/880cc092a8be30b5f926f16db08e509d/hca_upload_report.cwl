class: CommandLineTool
id: ../../../hca_upload_report.cwl
inputs:
- id: env
  doc: Environment the upload area was created in (default is based on currently selected
    upload area)
  type: string
  inputBinding:
    prefix: --env
- id: uuid
  doc: Full UUID of an upload area (default is based on currently selected upload
    area)
  type: string
  inputBinding:
    prefix: --uuid
- id: output_file_name
  doc: Name of output file (default is upload area name)
  type: string
  inputBinding:
    prefix: --output_file_name
outputs: []
cwlVersion: v1.1
baseCommand:
- hca
- upload
- report
