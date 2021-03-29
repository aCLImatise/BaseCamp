class: CommandLineTool
id: get_scores_in_intervals.py.cwl
inputs:
- id: in_score_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_interval_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_out_file
  doc: ''
  type: string?
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bx-python:0.8.11--py36h5e0341f_0
cwlVersion: v1.1
baseCommand:
- get_scores_in_intervals.py
