#!/usr/bin/env cwl-runner

baseCommand:
- obprobe
class: CommandLineTool
cwlVersion: v1.0
id: obprobe
inputs:
- doc: step size
  id: s
  inputBinding:
    prefix: -s
  type: string
- doc: padding
  id: p
  inputBinding:
    prefix: -p
  type: string
