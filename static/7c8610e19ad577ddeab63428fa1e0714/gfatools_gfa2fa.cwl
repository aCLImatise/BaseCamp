class: CommandLineTool
id: gfatools_gfa2fa.cwl
inputs:
- id: in_line_length
  doc: line length [60]
  type: long?
  inputBinding:
    prefix: -l
- id: in_output_stable_sequences
  doc: output stable sequences (rGFA only)
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_skip_rank_
  doc: skip rank-0 sequences (rGFA only; force -s)
  type: boolean?
  inputBinding:
    prefix: -P
- id: in_only_output_rank
  doc: only output rank-0 sequences (rGFA only; force -s)
  type: boolean?
  inputBinding:
    prefix: '-0'
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
- gfa2fa
