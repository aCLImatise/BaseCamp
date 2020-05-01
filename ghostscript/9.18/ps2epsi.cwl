#!/usr/bin/env cwl-runner

baseCommand:
- ps2epsi
class: CommandLineTool
cwlVersion: v1.0
id: ps2epsi
inputs:
- doc: support multiple arguments and treat each as a NAME
  id: multiple
  inputBinding:
    prefix: --multiple
  type: boolean
- doc: remove a trailing SUFFIX; implies -a
  id: suffix
  inputBinding:
    prefix: --suffix
  type: string
- doc: end each output line with NUL, not newline
  id: zero
  inputBinding:
    prefix: --zero
  type: boolean
- doc: support multiple arguments and treat each as a NAME
  id: multiple
  inputBinding:
    prefix: --multiple
  type: boolean
- doc: remove a trailing SUFFIX; implies -a
  id: suffix
  inputBinding:
    prefix: --suffix
  type: string
- doc: end each output line with NUL, not newline
  id: zero
  inputBinding:
    prefix: --zero
  type: boolean
- doc: :1194/1684(ro)(G)--   --dict:0/20(G)--   --dict:79/200(L)--   --dict:14/30(L)--   --dict:14/30(L)--
  id: dict
  inputBinding:
    prefix: --dict
  type: boolean
- doc: support multiple arguments and treat each as a NAME
  id: multiple
  inputBinding:
    prefix: --multiple
  type: boolean
- doc: remove a trailing SUFFIX; implies -a
  id: suffix
  inputBinding:
    prefix: --suffix
  type: string
- doc: end each output line with NUL, not newline
  id: zero
  inputBinding:
    prefix: --zero
  type: boolean
