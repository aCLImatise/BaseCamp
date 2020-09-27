class: CommandLineTool
id: xplore.cwl
inputs:
- id: in_link
  doc: "-load\n-save\n-search\n-version\n-help"
  type: boolean
  inputBinding:
    prefix: -link
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- xplore
