class: CommandLineTool
id: genomedata_load_data_OPTION..._TRACKNAME.cwl
inputs:
- id: genome_data_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: track_name
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- genomedata-load-data
- OPTION...
- TRACKNAME
