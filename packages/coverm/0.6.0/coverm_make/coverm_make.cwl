class: CommandLineTool
id: coverm_make.cwl
inputs:
- id: in_coupled
  doc: ''
  type: string?
  inputBinding:
    prefix: --coupled
- id: in_flags
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/coverm:0.6.0--hc216eb9_0
cwlVersion: v1.1
baseCommand:
- coverm
- make
