class: CommandLineTool
id: maf_drop_overlapping.py.cwl
inputs:
- id: in_interval
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_files_dot_dot_dot
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
  dockerPull: quay.io/biocontainers/bx-python:0.8.10--py36h5e0341f_0
cwlVersion: v1.1
baseCommand:
- maf_drop_overlapping.py
