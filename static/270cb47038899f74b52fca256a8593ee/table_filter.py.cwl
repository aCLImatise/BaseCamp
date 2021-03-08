class: CommandLineTool
id: table_filter.py.cwl
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
- id: in_force_header
  doc: "assume the first line is a header even if it does not\nstart with \"#\""
  type: boolean?
  inputBinding:
    prefix: --force-header
- id: in_cols
  doc: names or indexes of columns to keep
  type: string?
  inputBinding:
    prefix: --cols
- id: in_expression
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bx-python:0.8.10--py36h5e0341f_0
cwlVersion: v1.1
baseCommand:
- table_filter.py
