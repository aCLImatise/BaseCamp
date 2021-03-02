class: CommandLineTool
id: setup.py.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cami-opal:1.0.9--py_0
cwlVersion: v1.1
baseCommand:
- setup.py
