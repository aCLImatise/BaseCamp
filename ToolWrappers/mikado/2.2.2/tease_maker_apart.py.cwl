class: CommandLineTool
id: tease_maker_apart.py.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mikado:2.2.2--py37hfa133b6_0
cwlVersion: v1.1
baseCommand:
- tease_maker_apart.py
