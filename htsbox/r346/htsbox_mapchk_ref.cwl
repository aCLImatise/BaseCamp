class: CommandLineTool
id: htsbox_mapchk_ref.fa.cwl
inputs:
- id: a_lnb_am
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: re_ffa
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- htsbox
- mapchk
- ref.fa
