class: CommandLineTool
id: inclusion_level.py.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/rmats:4.1.1--py27h9b06725_0
cwlVersion: v1.1
baseCommand:
- inclusion_level.py
