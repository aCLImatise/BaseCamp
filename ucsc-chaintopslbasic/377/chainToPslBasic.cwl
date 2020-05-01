#!/usr/bin/env cwl-runner

baseCommand:
- chainToPslBasic
class: CommandLineTool
cwlVersion: v1.0
id: chaintopslbasic
inputs:
- doc: ''
  id: chain_top_sl
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: in_chain
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: out_psl
  inputBinding:
    position: 2
  type: string
