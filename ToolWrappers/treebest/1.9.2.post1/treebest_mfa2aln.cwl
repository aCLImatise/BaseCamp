class: CommandLineTool
id: treebest_mfa2aln.cwl
inputs:
- id: in_n
  doc: ''
  type: boolean
  inputBinding:
    prefix: -n
- id: in_fast_a_align
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- treebest
- mfa2aln
