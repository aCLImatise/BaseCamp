class: CommandLineTool
id: sumlabels.py.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dendropy:4.5.2--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- sumlabels.py
