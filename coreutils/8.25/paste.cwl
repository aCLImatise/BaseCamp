#!/usr/bin/env cwl-runner

baseCommand:
- paste
class: CommandLineTool
cwlVersion: v1.0
id: paste
inputs:
- doc: reuse characters from LIST instead of TABs
  id: delimiters
  inputBinding:
    prefix: --delimiters
  type: string
- doc: one file at a time instead of in parallel
  id: serial
  inputBinding:
    prefix: --serial
  type: string
- doc: line delimiter is NUL, not newline
  id: zero_terminated
  inputBinding:
    prefix: --zero-terminated
  type: boolean
