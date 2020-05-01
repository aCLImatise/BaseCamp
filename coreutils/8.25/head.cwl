#!/usr/bin/env cwl-runner

baseCommand:
- head
class: CommandLineTool
cwlVersion: v1.0
id: head
inputs:
- doc: =[-]NUM       print the first NUM bytes of each file; with the leading '-',
    print all but the last NUM bytes of each file
  id: bytes
  inputBinding:
    prefix: --bytes
  type: boolean
- doc: =[-]NUM       print the first NUM lines instead of the first 10; with the leading
    '-', print all but the last NUM lines of each file
  id: lines
  inputBinding:
    prefix: --lines
  type: boolean
- doc: print headers giving file names
  id: silent
  inputBinding:
    prefix: --silent
  type: string
- doc: print headers giving file names
  id: verbose
  inputBinding:
    prefix: --verbose
  type: string
- doc: line delimiter is NUL, not newline
  id: zero_terminated
  inputBinding:
    prefix: --zero-terminated
  type: boolean
