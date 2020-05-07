class: CommandLineTool
id: distance_matrix_from_mapping.py.cwl
inputs:
- id: input_path
  doc: Mapping filepath. [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_path
- id: column
  doc: string containing the name of the column in the mapping file, e.g. 'DOB'. If
    you pass two colums separated by a comma (e.g. 'Latitude,Longitud') the script
    will calculate the Vincenty formula (WGS-84) for distance between two Latitude/Longitude
    points. [REQUIRED]
  type: string
  inputBinding:
    prefix: --column
outputs: []
cwlVersion: v1.1
baseCommand:
- distance_matrix_from_mapping.py
