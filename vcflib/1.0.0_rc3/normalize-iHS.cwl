#!/usr/bin/env cwl-runner

baseCommand:
- normalize-iHS
class: CommandLineTool
cwlVersion: v1.0
id: normalize-ihs
inputs:
- doc: ''
  id: normalize_hs
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: '001'
  inputBinding:
    position: 1
  type: string
- doc: "goes here       -'                "
  id: your
  inputBinding:
    prefix: '-     Your'
  type: string
