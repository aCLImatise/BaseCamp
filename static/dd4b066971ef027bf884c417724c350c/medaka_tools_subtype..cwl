class: CommandLineTool
id: medaka_tools_subtype..cwl
inputs:
- id: in_medaka
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_tools
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- medaka
- tools
- subtype.
