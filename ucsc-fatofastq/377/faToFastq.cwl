#!/usr/bin/env cwl-runner

baseCommand:
- faToFastq
class: CommandLineTool
cwlVersion: v1.0
id: fatofastq
inputs:
- doc: ''
  id: in_fa
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: out_fast_q
  inputBinding:
    position: 1
  type: string
- doc: quality letter to use.  Default is '<' which is good I think....
  id: qual
  inputBinding:
    prefix: -qual
  type: string
