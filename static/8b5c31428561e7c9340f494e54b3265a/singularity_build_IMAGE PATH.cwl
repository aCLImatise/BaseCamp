class: CommandLineTool
id: singularity_build_IMAGE PATH.cwl
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
- id: in_build
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_local
  doc: ''
  type: string?
  inputBinding:
    position: 4
- id: in_image_path
  doc: ''
  type: File
  inputBinding:
    position: 6
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- singularity
- build
- IMAGE PATH
