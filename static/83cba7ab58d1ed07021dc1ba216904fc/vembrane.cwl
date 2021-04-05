class: CommandLineTool
id: vembrane.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/vembrane:0.6.1--py_0
cwlVersion: v1.1
baseCommand:
- vembrane
