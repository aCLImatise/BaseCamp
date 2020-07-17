class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/hca_upload_status.cwl
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
- id: filename
  doc: File name
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- hca
- upload
- status
