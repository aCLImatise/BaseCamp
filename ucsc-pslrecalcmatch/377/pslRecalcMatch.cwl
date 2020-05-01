#!/usr/bin/env cwl-runner

baseCommand:
- pslRecalcMatch
class: CommandLineTool
cwlVersion: v1.0
id: pslrecalcmatch
inputs:
- doc: ''
  id: in_psl
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: target_seq
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: query_seq
  inputBinding:
    position: 2
  type: string
- doc: ''
  id: out_psl
  inputBinding:
    position: 3
  type: string
- doc: the record if querySeq doesn't include qName
  id: ignore_q_missing
  inputBinding:
    prefix: -ignoreQMissing
  type: string
