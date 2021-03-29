class: CommandLineTool
id: matUtils.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/usher:0.2.0--hfcd16c1_0
cwlVersion: v1.1
baseCommand:
- matUtils
