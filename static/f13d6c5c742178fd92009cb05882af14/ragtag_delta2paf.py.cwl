class: CommandLineTool
id: ragtag_delta2paf.py.cwl
inputs:
- id: in_a_lns_dot_delta
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
  dockerPull: quay.io/biocontainers/ragtag:1.1.1--pyh7b7c402_0
cwlVersion: v1.1
baseCommand:
- ragtag_delta2paf.py
