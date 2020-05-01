#!/usr/bin/env cwl-runner

baseCommand:
- nw_rename
class: CommandLineTool
cwlVersion: v1.0
id: nw_rename
inputs:
- doc: ": only replace leaf labels. This is useful if all labels are numeric, but\
    \ inner labels represent bootstraps, and you don't want to accidentally modify\
    \ bootstrap values."
  id: l
  inputBinding:
    prefix: -l
  type: boolean
