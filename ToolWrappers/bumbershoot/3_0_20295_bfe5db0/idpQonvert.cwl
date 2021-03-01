class: CommandLineTool
id: idpQonvert.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bumbershoot:3_0_20295_bfe5db0--hc9558a2_0
cwlVersion: v1.1
baseCommand:
- idpQonvert
