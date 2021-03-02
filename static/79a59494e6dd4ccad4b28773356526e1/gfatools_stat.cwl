class: CommandLineTool
id: gfatools_stat.cwl
inputs:
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
  dockerPull: quay.io/biocontainers/gfatools:0.4--hed695b0_0
cwlVersion: v1.1
baseCommand:
- gfatools
- stat
