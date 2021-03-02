class: CommandLineTool
id: split_fa.cwl
inputs:
- id: in_bool_block_split
  doc: BOOL    block split by N
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_options
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_stat
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/purge_dups:1.2.5--hed695b0_0
cwlVersion: v1.1
baseCommand:
- split_fa
