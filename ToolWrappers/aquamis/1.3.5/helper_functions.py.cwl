class: CommandLineTool
id: helper_functions.py.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/aquamis:1.3.5--0
cwlVersion: v1.1
baseCommand:
- helper_functions.py
