class: CommandLineTool
id: ../../../genomedata_close_data.cwl
inputs:
- id: verbose
  doc: Print status updates and diagnostic messages
  type: boolean
  inputBinding:
    prefix: --verbose
- id: gd_archive
  doc: genomedata archive
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- genomedata-close-data
