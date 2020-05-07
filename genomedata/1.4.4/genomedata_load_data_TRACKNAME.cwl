class: CommandLineTool
id: genomedata_load_data_TRACKNAME.cwl
inputs:
- id: option
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: genome_data_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: track_name
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- genomedata-load-data
- TRACKNAME
