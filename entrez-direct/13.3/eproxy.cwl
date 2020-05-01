#!/usr/bin/env cwl-runner

baseCommand:
- eproxy
class: CommandLineTool
cwlVersion: v1.0
id: eproxy
inputs:
- doc: File of aliases
  id: alias
  inputBinding:
    prefix: -alias
  type: boolean
- doc: Read aliases from stdin
  id: pipe
  inputBinding:
    prefix: -pipe
  type: boolean
