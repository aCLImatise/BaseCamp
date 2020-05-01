#!/usr/bin/env cwl-runner

baseCommand:
- bedJoinTabOffset
class: CommandLineTool
cwlVersion: v1.0
id: bedjointaboffset
inputs:
- doc: show debug messages
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
- doc: the index of the key field in the tab file that matches the key field in the
    bed file. default 0
  id: tab_key_field
  inputBinding:
    prefix: --tabKeyField
  type: string
- doc: the index of the key field in the bed file that matches the key field in the
    tab file. default 3
  id: bed_key_field
  inputBinding:
    prefix: --bedKeyField
  type: string
