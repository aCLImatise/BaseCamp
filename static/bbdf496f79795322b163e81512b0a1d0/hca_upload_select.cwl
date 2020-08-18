class: CommandLineTool
id: ../../../hca_upload_select.cwl
inputs:
- id: uri_or_alias
  doc: S3 URI of an upload area, or short alias.
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- hca
- upload
- select
