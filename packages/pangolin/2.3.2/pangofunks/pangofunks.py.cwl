class: CommandLineTool
id: pangofunks.py.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pangolin:2.3.2--py_0
cwlVersion: v1.1
baseCommand:
- pangofunks.py
