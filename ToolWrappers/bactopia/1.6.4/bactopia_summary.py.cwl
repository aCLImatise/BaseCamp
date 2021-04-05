class: CommandLineTool
id: bactopia_summary.py.cwl
inputs:
- id: in_directory_where_repository
  doc: Directory where Bactopia repository is stored.
  type: Directory?
  inputBinding:
    prefix: --bactopia
- id: in_var_1
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_summary
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
  dockerPull: quay.io/biocontainers/bactopia:1.6.4--0
cwlVersion: v1.1
baseCommand:
- bactopia-summary.py
