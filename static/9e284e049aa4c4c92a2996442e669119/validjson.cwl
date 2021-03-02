class: CommandLineTool
id: validjson.cwl
inputs:
- id: in_verbose
  doc: Get confirmation that the files are valid.
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- validjson
