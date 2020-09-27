class: CommandLineTool
id: genxs.cwl
inputs:
- id: in_config_file_name
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_destination_path
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- genxs
