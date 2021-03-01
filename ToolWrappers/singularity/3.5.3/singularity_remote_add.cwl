class: CommandLineTool
id: singularity_remote_add.cwl
inputs:
- id: in_singularity
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_global
  doc: ''
  type: string?
  inputBinding:
    position: 1
- id: in_options_dot_dot_dot
  doc: ''
  type: string?
  inputBinding:
    position: 2
- id: in_remote
  doc: ''
  type: string?
  inputBinding:
    position: 3
- id: in_add
  doc: ''
  type: string?
  inputBinding:
    position: 6
- id: in_remote_name
  doc: ''
  type: string
  inputBinding:
    position: 9
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- singularity
- remote
- add
