class: CommandLineTool
id: custom_logger.py.cwl
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
- custom_logger.py
