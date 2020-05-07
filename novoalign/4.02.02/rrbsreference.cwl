class: CommandLineTool
id: rrbsreference.cwl
inputs:
- id: ref_nix
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: maxlength
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: ccgg_tsv
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: rrbs_masked_re_ffa
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- rrbsreference
