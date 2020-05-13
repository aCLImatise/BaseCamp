class: CommandLineTool
id: orthomclFilterFasta_input_dir_min_length_max_percent_stops_poor_proteins_file.cwl
inputs:
- id: good_proteins_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: poor_proteins_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- orthomclFilterFasta
- input_dir
- min_length
- max_percent_stops
- poor_proteins_file
