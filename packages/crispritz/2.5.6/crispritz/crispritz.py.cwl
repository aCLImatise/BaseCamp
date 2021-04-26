class: CommandLineTool
id: crispritz.py.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/crispritz:2.5.6--py37h6580678_0
cwlVersion: v1.1
baseCommand:
- crispritz.py
