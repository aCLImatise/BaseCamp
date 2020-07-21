class: CommandLineTool
id: ../../../genomedata_load_data.cwl
inputs:
- id: option_dot_dot_dot
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
