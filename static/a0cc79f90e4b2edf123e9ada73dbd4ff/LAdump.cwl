class: CommandLineTool
id: LAdump.cwl
inputs:
- id: c
  doc: ': C #ab #ae #bb #be - #a[#ab,#ae] aligns with #b^#o[#bb,#be]'
  type: boolean
  inputBinding:
    prefix: -c
- id: d
  doc: ': D #               - there are # differences in the LA'
  type: boolean
  inputBinding:
    prefix: -d
- id: t
  doc: ": T #n              - there are #n trace point intervals for the LA (#d #y\
    \ )^#n      - there are #d difference aligning the #y bp's of B with the next\
    \ fixed-size interval of A"
  type: boolean
  inputBinding:
    prefix: -t
- id: l
  doc: ': L #la #lb         - #la is the length of the a-read and #lb that of the
    b-read'
  type: boolean
  inputBinding:
    prefix: -l
- id: o
  doc: ': Output proper overlaps only'
  type: boolean
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- LAdump
