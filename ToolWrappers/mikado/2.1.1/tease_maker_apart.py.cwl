class: CommandLineTool
id: tease_maker_apart.py.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mikado:2.1.1--py36hf0b53f7_0
cwlVersion: v1.1
baseCommand:
- tease_maker_apart.py
