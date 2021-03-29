class: CommandLineTool
id: maf_extract_ranges.py.cwl
inputs:
- id: in_min_cols
  doc: "Minimum length (columns) required for alignment to be\noutput\n"
  type: long?
  inputBinding:
    prefix: --mincols
- id: in_interval_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_ref_index
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
- maf_extract_ranges.py
