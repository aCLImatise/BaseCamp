class: CommandLineTool
id: list_multidomain_proteins.py.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/run-dbcan:2.0.11--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- list_multidomain_proteins.py
