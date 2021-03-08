class: CommandLineTool
id: bed_diff_basewise_summary.py.cwl
inputs:
- id: in_bed_file_one
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_bed_file_two
  doc: ''
  type: long
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
- bed_diff_basewise_summary.py
