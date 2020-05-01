#!/usr/bin/env cwl-runner

baseCommand:
- stdbuf
class: CommandLineTool
cwlVersion: v1.0
id: stdbuf
inputs:
- doc: ''
  id: option
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: command
  inputBinding:
    position: 1
  type: string
- doc: adjust standard input stream buffering
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: adjust standard output stream buffering
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: adjust standard error stream buffering
  id: error
  inputBinding:
    prefix: --error
  type: string
