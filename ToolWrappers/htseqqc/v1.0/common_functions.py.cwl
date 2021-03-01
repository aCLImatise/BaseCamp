class: CommandLineTool
id: common_functions.py.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/htseqqc:v1.0--pyh5bfb8f1_0
cwlVersion: v1.1
baseCommand:
- common_functions.py
