class: CommandLineTool
id: table_add_column.py.cwl
inputs:
- id: in_header
  doc: keep header in output
  type: boolean?
  inputBinding:
    prefix: --header
- id: in_comments
  doc: keep comments in output
  type: boolean?
  inputBinding:
    prefix: --comments
- id: in_expression
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_colname
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bx-python:0.8.11--py36h5e0341f_0
cwlVersion: v1.1
baseCommand:
- table_add_column.py
