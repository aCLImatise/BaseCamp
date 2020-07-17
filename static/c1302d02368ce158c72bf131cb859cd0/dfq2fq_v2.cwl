class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/dfq2fq_v2.pl.cwl
inputs:
- id: finish
  doc: (chops low depth (<valid_depth) regions)
  type: boolean
  inputBinding:
    prefix: --finish
- id: check
  doc: (outputs not broken dfq records and discard the rest ('broken' was defined
    in this code))
  type: boolean
  inputBinding:
    prefix: --check
- id: pnp
  doc: (outputs confidently corrected reads only ('confident' was defined in this
    code))
  type: boolean
  inputBinding:
    prefix: --pnp
- id: list
  doc: (outputs confidently corrected read names)
  type: boolean
  inputBinding:
    prefix: --list
- id: n_list
  doc: (outputs NOT confidently corrected read names)]
  type: boolean
  inputBinding:
    prefix: --nlist
- id: this
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_dot_dfq
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- dfq2fq_v2.pl
