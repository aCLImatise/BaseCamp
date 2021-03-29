class: CommandLineTool
id: wiggle_to_binned_array.py.cwl
inputs:
- id: in_comp
  doc: compression type (none, zlib, lzo)
  type: string?
  inputBinding:
    prefix: --comp
- id: in_score_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_out_file
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
- wiggle_to_binned_array.py
