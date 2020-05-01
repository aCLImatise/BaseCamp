#!/usr/bin/env cwl-runner

baseCommand:
- LAdump
class: CommandLineTool
cwlVersion: v1.0
id: ladump
inputs:
- doc: ': C #ab #ae #bb #be - #a[#ab,#ae] aligns with #b^#o[#bb,#be]'
  id: c
  inputBinding:
    prefix: -c
  type: boolean
- doc: ': D #               - there are # differences in the LA'
  id: d
  inputBinding:
    prefix: -d
  type: boolean
- doc: ": T #n              - there are #n trace point intervals for the LA (#d #y\
    \ )^#n      - there are #d difference aligning the #y bp's of B with the next\
    \ fixed-size interval of A"
  id: t
  inputBinding:
    prefix: -t
  type: boolean
- doc: ': L #la #lb         - #la is the length of the a-read and #lb that of the
    b-read'
  id: l
  inputBinding:
    prefix: -l
  type: boolean
- doc: ': Output proper overlaps only'
  id: o
  inputBinding:
    prefix: -o
  type: boolean
