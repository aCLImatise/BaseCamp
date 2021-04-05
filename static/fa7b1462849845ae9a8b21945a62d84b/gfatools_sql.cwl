class: CommandLineTool
id: gfatools_sql.cwl
inputs:
- id: in_write_sequence
  doc: write sequence
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_in_dot_gfa
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gfatools:0.5--hed695b0_0
cwlVersion: v1.1
baseCommand:
- gfatools
- sql
