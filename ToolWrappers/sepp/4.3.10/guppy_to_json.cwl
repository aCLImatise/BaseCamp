class: CommandLineTool
id: guppy_to_json.cwl
inputs:
- id: in_help
  doc: Display this list of options
  type: boolean
  inputBinding:
    prefix: --help
- id: in_to_json
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_place_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_s
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- guppy
- to_json
