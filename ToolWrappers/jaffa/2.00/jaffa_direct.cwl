class: CommandLineTool
id: jaffa_direct.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/jaffa:2.00--0
cwlVersion: v1.1
baseCommand:
- jaffa-direct
