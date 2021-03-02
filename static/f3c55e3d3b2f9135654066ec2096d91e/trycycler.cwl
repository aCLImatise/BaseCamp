class: CommandLineTool
id: trycycler.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/trycycler:0.4.2--py_0
cwlVersion: v1.1
baseCommand:
- trycycler
