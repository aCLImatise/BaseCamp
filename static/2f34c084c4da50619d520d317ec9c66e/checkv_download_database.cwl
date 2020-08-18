class: CommandLineTool
id: ../../../checkv_download_database.cwl
inputs:
- id: quiet
  doc: Suppress logging messages
  type: boolean
  inputBinding:
    prefix: --quiet
- id: destination
  doc: Directory where the database will be downloaded to.
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- checkv
- download_database
