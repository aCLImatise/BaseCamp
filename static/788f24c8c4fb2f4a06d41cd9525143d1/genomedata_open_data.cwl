class: CommandLineTool
id: genomedata_open_data.cwl
inputs:
- id: gd_archive
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: verbose
  doc: ''
  type: boolean
  inputBinding:
    prefix: --verbose
- id: track_names
  doc: ''
  type: string
  inputBinding:
    prefix: --tracknames
outputs: []
cwlVersion: v1.1
baseCommand:
- genomedata-open-data
