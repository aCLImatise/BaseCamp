#!/usr/bin/env cwl-runner

baseCommand:
- get
class: CommandLineTool
cwlVersion: v1.0
id: get
inputs:
- doc: ''
  id: i
  inputBinding:
    prefix: -i
  type:
    items: string
    type: array
- doc: ''
  id: t
  inputBinding:
    prefix: -t
  type: string
- doc: ''
  id: history_id
  inputBinding:
    prefix: --history-id
  type: string
