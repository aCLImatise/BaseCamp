class: CommandLineTool
id: aggregate_scores_in_intervals.py_score_file.cwl
inputs:
- id: in_binned
  doc: "'score_file' is actually a directory of binned array"
  type: boolean?
  inputBinding:
    prefix: --binned
- id: in_files
  doc: -m MASK, --mask=MASK  bed file containing regions not to consider valid
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bx-python:0.8.11--py36h5e0341f_0
cwlVersion: v1.1
baseCommand:
- aggregate_scores_in_intervals.py
- score_file
