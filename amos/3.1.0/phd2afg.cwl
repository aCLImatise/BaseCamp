class: CommandLineTool
id: ../../../phd2afg.cwl
inputs:
- id: directory_where_located
  doc: directory where phd files are located
  type: string
  inputBinding:
    prefix: -d
- id: name_output_file
  doc: name of the output file
  type: File
  inputBinding:
    prefix: -o
- id: optional_file_containing_coordinates
  doc: 'optional: file containing clipping coordinates'
  type: File
  inputBinding:
    prefix: -c
- id: optional_file_containing_info
  doc: 'optional: file containing mate-pair info in Bambus .mates format'
  type: File
  inputBinding:
    prefix: -m
outputs: []
cwlVersion: v1.1
baseCommand:
- phd2afg
