#!/usr/bin/env cwl-runner

baseCommand:
- rrbsreference
class: CommandLineTool
cwlVersion: v1.0
id: rrbsreference
inputs:
- doc: ''
  id: ref_nix
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: maxlength
  inputBinding:
    position: 1
  type: long
- doc: ''
  id: ccgg_tsv
  inputBinding:
    position: 2
  type: string
- doc: ''
  id: rrbs_masked_re_ffa
  inputBinding:
    position: 3
  type: string
