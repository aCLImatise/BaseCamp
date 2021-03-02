class: CommandLineTool
id: sectosupp.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bamkit:16.07.26--py_0
cwlVersion: v1.1
baseCommand:
- sectosupp
