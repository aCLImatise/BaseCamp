class: CommandLineTool
id: ../../../hca_upload_creds.cwl
inputs:
- id: uuid_or_alias
  doc: Full or partial (alias) UUID of an upload area.
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- hca
- upload
- creds
