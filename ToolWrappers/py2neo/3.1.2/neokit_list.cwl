class: CommandLineTool
id: neokit_list.cwl
inputs:
- id: in_list
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
- neokit
- list
