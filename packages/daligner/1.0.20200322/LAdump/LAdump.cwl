class: CommandLineTool
id: LAdump.cwl
inputs:
- id: in_c_ab_ae
  doc: ': C #ab #ae #bb #be - #a[#ab,#ae] aligns with #b^#o[#bb,#be]'
  type: boolean
  inputBinding:
    prefix: -c
- id: in_d_there_differences
  doc: ': D #               - there are # differences in the LA'
  type: boolean
  inputBinding:
    prefix: -d
- id: in_t_n_there
  doc: ": T #n              - there are #n trace point intervals for the LA\n(#d #y\
    \ )^#n      - there are #d difference aligning the #y bp's of B with the\nnext\
    \ fixed-size interval of A"
  type: boolean
  inputBinding:
    prefix: -t
- id: in_l_la_la
  doc: ': L #la #lb         - #la is the length of the a-read and #lb that of the
    b-read'
  type: boolean
  inputBinding:
    prefix: -l
- id: in_output_proper_overlaps
  doc: ': Output proper overlaps only'
  type: boolean
  inputBinding:
    prefix: -o
- id: in_cdt_lo
  doc: ''
  type: boolean
  inputBinding:
    prefix: -cdtlo
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- LAdump
