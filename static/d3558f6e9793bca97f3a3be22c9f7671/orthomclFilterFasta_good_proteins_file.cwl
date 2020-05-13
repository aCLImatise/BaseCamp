class: CommandLineTool
id: orthomclFilterFasta_good_proteins_file.cwl
inputs:
- id: input_dir
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: min_length
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: max_percent_stops
  doc: ''
  type: long
  inputBinding:
    position: 2
- id: good_proteins_file
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: poor_proteins_file
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- orthomclFilterFasta
- good_proteins_file
