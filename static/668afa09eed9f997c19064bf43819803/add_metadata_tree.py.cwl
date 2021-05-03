class: CommandLineTool
id: add_metadata_tree.py.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/metaphlan:3.0.8--pyhb7b1952_0
cwlVersion: v1.1
baseCommand:
- add_metadata_tree.py
