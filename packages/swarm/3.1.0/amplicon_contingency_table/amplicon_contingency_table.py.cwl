class: CommandLineTool
id: amplicon_contingency_table.py.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/swarm:3.1.0--hc9558a2_0
cwlVersion: v1.1
baseCommand:
- amplicon_contingency_table.py
