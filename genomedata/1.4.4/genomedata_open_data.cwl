class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/genomedata_open_data.cwl
inputs:
- id: track_names
  doc: tracknames to open
  type: string[]
  inputBinding:
    prefix: --tracknames
- id: verbose
  doc: Print status updates and diagnostic messages
  type: boolean
  inputBinding:
    prefix: --verbose
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: gd_archive
  doc: genomedata archive
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- genomedata-open-data
