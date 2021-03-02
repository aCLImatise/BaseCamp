class: CommandLineTool
id: fzn_gecode_disabled.cwl
inputs:
- id: in_fz_n_gecode
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gecode:6.2.0--hb70a6f5_0
cwlVersion: v1.1
baseCommand:
- fzn-gecode
- disabled
