class: CommandLineTool
id: orthomclFilterFasta.cwl
inputs:
- id: in_input_dir
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_min_length
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_max_percent_stops
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_good_proteins_file
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- orthomclFilterFasta
