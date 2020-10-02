class: CommandLineTool
id: jdeps_filtering..cwl
inputs:
- id: in_j_deps
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_options
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_path_dot_dot_dot
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- jdeps
- filtering.
