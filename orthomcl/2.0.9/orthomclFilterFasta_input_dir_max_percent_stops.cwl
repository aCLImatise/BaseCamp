class: CommandLineTool
id: orthomclFilterFasta_input_dir_max_percent_stops.cwl
inputs:
- id: min_length
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: max_percent_stops
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: good_proteins_file
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: poor_proteins_file
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- orthomclFilterFasta
- input_dir
- max_percent_stops
