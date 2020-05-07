class: CommandLineTool
id: coords2clnt.py.cwl
inputs:
- id: in_file
  doc: Path to bed input file.
  type: string
  inputBinding:
    position: 0
- id: verbose
  doc: Be verbose.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: debug
  doc: Print lots of debugging information
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- coords2clnt.py
