class: CommandLineTool
id: nest_indirect_nest.cwl
inputs:
- id: in_nest_indirect
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_script
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
- nest_indirect
- nest
