#!/usr/bin/env cwl-runner

baseCommand:
- seq-seq-pan-consensus
class: CommandLineTool
cwlVersion: v1.0
id: seq-seq-pan-consensus
inputs:
- doc: ''
  id: input_x_mfa
  inputBinding:
    position: 0
  type: string
