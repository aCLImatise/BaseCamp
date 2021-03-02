class: CommandLineTool
id: dfq2fq_v2.pl.cwl
inputs:
- id: in_valid_read_length
  doc: (chops low depth (<valid_depth) regions)
  type: long?
  inputBinding:
    prefix: --valid_read_length
- id: in_check
  doc: (outputs not broken dfq records and discard the rest ('broken' was defined
    in this code))
  type: boolean?
  inputBinding:
    prefix: --check
- id: in_pnp
  doc: (outputs confidently corrected reads only ('confident' was defined in this
    code))
  type: boolean?
  inputBinding:
    prefix: --pnp
- id: in_list
  doc: (outputs confidently corrected read names)
  type: boolean?
  inputBinding:
    prefix: --list
- id: in_n_list
  doc: (outputs NOT confidently corrected read names)]
  type: boolean?
  inputBinding:
    prefix: --nlist
- id: in_this
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_in_dot_dfq
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- dfq2fq_v2.pl
