class: CommandLineTool
id: h5cc.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bcalm:2.2.3--h8b12597_1
cwlVersion: v1.1
baseCommand:
- h5cc
