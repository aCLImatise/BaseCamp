class: CommandLineTool
id: atlas_validation.py.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/atlas-metadata-validator:1.4.1--py_0
cwlVersion: v1.1
baseCommand:
- atlas_validation.py
