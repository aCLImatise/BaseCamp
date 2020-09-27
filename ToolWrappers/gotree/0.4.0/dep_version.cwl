class: CommandLineTool
id: dep_version.cwl
inputs:
- id: in_version
  doc: ': devel'
  type: string
  inputBinding:
    position: 0
- id: in_go_one_dot_one_three_dot_five
  doc: 'go compiler : gc'
  type: double
  inputBinding:
    position: 0
- id: in_platform
  doc: ': linux/amd64'
  type: string
  inputBinding:
    position: 1
- id: in_features
  doc: ': ImportDuringSolve=false'
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- dep
- version
