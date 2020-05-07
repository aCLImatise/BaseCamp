class: CommandLineTool
id: map_data_ids.cwl
inputs:
- id: col
  doc: The column number (1 based) in the data file that corresponds to old_name in
    the mapping file.
  type: string
  inputBinding:
    position: 0
- id: delimit
  doc: The delimeter for the data file.
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- map_data_ids
