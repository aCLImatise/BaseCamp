class: CommandLineTool
id: CCAT.cwl
inputs:
- id: in_library_one_tag_file_name
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_library_two_tag_file_name
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_chromosome_length_file_name
  doc: ''
  type: long
  inputBinding:
    position: 2
- id: in_config_file_name
  doc: ''
  type: File
  inputBinding:
    position: 3
- id: in_project_name
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- CCAT
