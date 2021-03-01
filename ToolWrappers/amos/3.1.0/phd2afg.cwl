class: CommandLineTool
id: phd2afg.cwl
inputs:
- id: in_directory_where_located
  doc: directory where phd files are located
  type: Directory?
  inputBinding:
    prefix: -d
- id: in_name_output_file
  doc: name of the output file
  type: File?
  inputBinding:
    prefix: -o
- id: in_optional_file_containing_clipping
  doc: 'optional: file containing clipping coordinates'
  type: File?
  inputBinding:
    prefix: -c
- id: in_optional_file_containing_info
  doc: 'optional: file containing mate-pair info in Bambus .mates format'
  type: File?
  inputBinding:
    prefix: -m
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_name_output_file
  doc: name of the output file
  type: File?
  outputBinding:
    glob: $(inputs.in_name_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- phd2afg
