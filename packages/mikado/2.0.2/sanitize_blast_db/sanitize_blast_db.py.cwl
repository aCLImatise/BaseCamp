class: CommandLineTool
id: sanitize_blast_db.py.cwl
inputs:
- id: in_o
  doc: ''
  type: string?
  inputBinding:
    prefix: -o
- id: in_ml
  doc: ''
  type: string?
  inputBinding:
    prefix: -ml
- id: in_fast_a
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mikado:2.0.2--py37hfa133b6_0
cwlVersion: v1.1
baseCommand:
- sanitize_blast_db.py
