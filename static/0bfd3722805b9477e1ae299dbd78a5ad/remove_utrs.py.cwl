class: CommandLineTool
id: remove_utrs.py.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mikado:2.2.5--py39h70b41aa_0
cwlVersion: v1.1
baseCommand:
- remove_utrs.py
