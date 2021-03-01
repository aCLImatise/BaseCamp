class: CommandLineTool
id: message_extract.cwl
inputs:
- id: in_file_path_input
  doc: The file path of the input message
  type: File?
  inputBinding:
    prefix: -m
- id: in_invert_match_filter
  doc: Invert match. Filter instead of extract given NCodes
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_n_codes
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- message-extract
