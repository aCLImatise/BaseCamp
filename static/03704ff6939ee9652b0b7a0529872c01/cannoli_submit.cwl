class: CommandLineTool
id: cannoli_submit.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cannoli:0.12.0--0
cwlVersion: v1.1
baseCommand:
- cannoli-submit
