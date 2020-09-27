class: CommandLineTool
id: vtools_format.cwl
inputs:
- id: in_v_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- vtools
- format
