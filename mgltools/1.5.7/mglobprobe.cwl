#!/usr/bin/env cwl-runner

baseCommand:
- mglobprobe
class: CommandLineTool
cwlVersion: v1.0
id: mglobprobe
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
