class: CommandLineTool
id: timeout_decorator.py.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/rodeo:2.3.3--0
cwlVersion: v1.1
baseCommand:
- timeout_decorator.py
