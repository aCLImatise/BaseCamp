class: CommandLineTool
id: singularity_remote_remove.cwl
inputs:
- id: in_singularity
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_global
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_options_dot_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_remote
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_remove
  doc: ''
  type: string
  inputBinding:
    position: 6
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- singularity
- remote
- remove
