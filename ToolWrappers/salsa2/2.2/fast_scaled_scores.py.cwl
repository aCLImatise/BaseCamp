class: CommandLineTool
id: fast_scaled_scores.py.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/salsa2:2.2--py27h78a066a_0
cwlVersion: v1.1
baseCommand:
- fast_scaled_scores.py
