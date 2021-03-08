class: CommandLineTool
id: crispritz.py.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/crispritz:2.4.9--py37h36a7b89_0
cwlVersion: v1.1
baseCommand:
- crispritz.py
