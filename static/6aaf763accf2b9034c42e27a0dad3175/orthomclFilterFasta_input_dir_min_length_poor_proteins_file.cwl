class: CommandLineTool
id: orthomclFilterFasta_input_dir_min_length_poor_proteins_file.cwl
inputs:
- id: max_percent_stops
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: good_proteins_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: poor_proteins_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- orthomclFilterFasta
- input_dir
- min_length
- poor_proteins_file
