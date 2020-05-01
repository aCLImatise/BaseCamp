#!/usr/bin/env cwl-runner

baseCommand:
- cut
class: CommandLineTool
cwlVersion: v1.0
id: cut
inputs:
- doc: N'th byte, character or field, counted from 1
  id: n
  inputBinding:
    position: 0
  type: string
- doc: from N'th byte, character or field, to end of line
  id: n
  inputBinding:
    position: 1
  type: string
- doc: from N'th to M'th (included) byte, character or field
  id: n_m
  inputBinding:
    position: 2
  type: string
- doc: line delimiter is NUL, not newline
  id: zero_terminated
  inputBinding:
    prefix: --zero-terminated
  type: boolean
- doc: from first to M'th (included) byte, character or field
  id: m
  inputBinding:
    prefix: -M
  type: boolean
