#!/usr/bin/env cwl-runner

baseCommand:
- SVcomp
class: CommandLineTool
cwlVersion: v1.0
id: svcomp
inputs:
- doc: ''
  id: ref
  inputBinding:
    prefix: --ref
  type: string
- doc: ''
  id: first
  inputBinding:
    prefix: --first
  type: string
- doc: ''
  id: second
  inputBinding:
    prefix: --second
  type: string
