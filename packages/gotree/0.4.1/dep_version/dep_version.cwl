class: CommandLineTool
id: dep_version.cwl
inputs:
- id: in_version
  doc: ': devel'
  type: string
  inputBinding:
    position: 0
- id: in_go_one_dot_one_five_dot_nine
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
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gotree:0.4.1--h375a9b1_0
cwlVersion: v1.1
baseCommand:
- dep
- version
