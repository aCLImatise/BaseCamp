#!/usr/bin/env cwl-runner

baseCommand:
- segmentFst
class: CommandLineTool
cwlVersion: v1.0
id: segmentfst
inputs:
- doc: ''
  id: '07'
  inputBinding:
    position: 0
  type: string
- doc: "goes here       -'                "
  id: your
  inputBinding:
    prefix: '-     Your'
  type: string
