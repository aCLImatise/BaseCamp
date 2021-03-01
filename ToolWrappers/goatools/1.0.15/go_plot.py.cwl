class: CommandLineTool
id: go_plot.py.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/goatools:1.0.15--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- go_plot.py
