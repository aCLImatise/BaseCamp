class: CommandLineTool
id: simkaMin_utils.py.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/simka:1.5.3--he513fc3_0
cwlVersion: v1.1
baseCommand:
- simkaMin_utils.py
