#!/usr/bin/env cwl-runner

baseCommand:
- sccaf-regress-out
class: CommandLineTool
cwlVersion: v1.0
id: sccaf-regress-out
inputs:
- doc: ''
  id: i
  inputBinding:
    prefix: -i
  type: string
- doc: ''
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: ''
  id: k
  inputBinding:
    prefix: -k
  type: string
