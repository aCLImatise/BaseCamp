#!/usr/bin/env cwl-runner

baseCommand:
- segmentIhs
class: CommandLineTool
cwlVersion: v1.0
id: segmentihs
inputs:
- doc: ''
  id: segment_fst
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: '2'
  inputBinding:
    position: 1
  type: string
- doc: "goes here       -'                "
  id: your
  inputBinding:
    prefix: '-     Your'
  type: string
