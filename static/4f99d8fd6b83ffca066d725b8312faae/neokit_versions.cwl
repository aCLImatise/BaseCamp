class: CommandLineTool
id: neokit_versions.cwl
inputs:
- id: in_versions
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- neokit
- versions
