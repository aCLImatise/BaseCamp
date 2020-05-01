#!/usr/bin/env cwl-runner

baseCommand:
- sexdeterrmine
class: CommandLineTool
cwlVersion: v1.0
id: sexdeterrmine
inputs:
- doc: ''
  id: i
  inputBinding:
    prefix: -I
  type: string
- doc: ''
  id: f
  inputBinding:
    prefix: -f
  type: string
- doc: ''
  id: v
  inputBinding:
    prefix: -v
  type: boolean
