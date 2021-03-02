class: CommandLineTool
id: cmip.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cmip:2.6.1--hc99cbb1_4
cwlVersion: v1.1
baseCommand:
- cmip
