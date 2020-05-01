#!/usr/bin/env cwl-runner

baseCommand:
- yaggo
class: CommandLineTool
cwlVersion: v1.0
id: yaggo
inputs:
- doc: Output file
  id: output
  inputBinding:
    prefix: --output
  type: File
- doc: License file to copy in header
  id: license
  inputBinding:
    prefix: --license
  type: File
- doc: '[FILE]                 Display or write manpage'
  id: man
  inputBinding:
    prefix: --man
  type: boolean
- doc: Output a stub yaggo file
  id: stub
  inputBinding:
    prefix: --stub
  type: boolean
- doc: Write zsh completion file
  id: zc
  inputBinding:
    prefix: --zc
  type: File
- doc: Use extended syntax
  id: extended_syntax
  inputBinding:
    prefix: --extended-syntax
  type: boolean
- doc: Debug yaggo
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
