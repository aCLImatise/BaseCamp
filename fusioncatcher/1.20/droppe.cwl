#!/usr/bin/env cwl-runner

baseCommand:
- droppe.py
class: CommandLineTool
cwlVersion: v1.0
id: droppe.py
inputs:
- doc: Tab separeted text file such that one line has two reads which are paired (i.e.
    generated via 'paste - - - -').
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: Tab separeted text file such that one line has two reads which are paired (i.e.
    generated via 'paste - - - -').
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: Reads ids that should not be removed. Default is none.
  id: keep
  inputBinding:
    prefix: --keep
  type: string
- doc: Counts of Reads that where removed. Default is none.
  id: info
  inputBinding:
    prefix: --info
  type: string
