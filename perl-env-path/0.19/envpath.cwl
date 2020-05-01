#!/usr/bin/env cwl-runner

baseCommand:
- envpath
class: CommandLineTool
cwlVersion: v1.0
id: envpath
inputs:
- doc: Append TOKEN to the path variable named 'VAR'
  id: a
  inputBinding:
    prefix: -A
  type: string
- doc: =newdir     Change <olddir> to <newdir> within 'VAR'
  id: c
  inputBinding:
    prefix: -C
  type: string
- doc: Prepend TOKEN to the path variable named 'VAR'
  id: p
  inputBinding:
    prefix: -P
  type: string
- doc: ",(-|+)TOKEN]   Insert TOKEN before (-) or after (+) 'dir' in VAR"
  id: i
  inputBinding:
    prefix: -I
  type: string
- doc: '[VAR]             List specified pathvar(s) in one-entry-per-line fmt'
  id: l
  inputBinding:
    prefix: -L
  type: boolean
- doc: Remove entries which don't exist
  id: n
  inputBinding:
    prefix: -N
  type: boolean
- doc: Remove specified dir from path
  id: r
  inputBinding:
    prefix: -R
  type: string
- doc: '[VAR]             Print specified pathvars in form suitable for `eval`'
  id: s
  inputBinding:
    prefix: -S
  type: boolean
- doc: Remove redundant entries from path
  id: u
  inputBinding:
    prefix: -U
  type: boolean
- doc: Like 'whence' ksh builtin - look for 'file' on PATH
  id: w
  inputBinding:
    prefix: -W
  type: File
