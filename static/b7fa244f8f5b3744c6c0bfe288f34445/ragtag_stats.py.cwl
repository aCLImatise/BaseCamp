class: CommandLineTool
id: ragtag_stats.py.cwl
inputs:
- id: in_ragtag_dot_scaffolds_dot_agp
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_ragtag_dot_confidence_dot_txt
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ragtag:1.1.1--pyh7b7c402_0
cwlVersion: v1.1
baseCommand:
- ragtag_stats.py
