class: CommandLineTool
id: helpers.py.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mtglink:1.0.2--0
cwlVersion: v1.1
baseCommand:
- helpers.py
