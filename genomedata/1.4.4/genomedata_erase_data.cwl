class: CommandLineTool
id: ../../../genomedata_erase_data.cwl
inputs:
- id: track_name
  doc: tracknames to erase
  type: string[]
  inputBinding:
    prefix: --trackname
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
- genomedata-erase-data
