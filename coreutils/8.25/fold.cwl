#!/usr/bin/env cwl-runner

baseCommand:
- fold
class: CommandLineTool
cwlVersion: v1.0
id: fold
inputs:
- doc: bytes rather than columns
  id: bytes
  inputBinding:
    prefix: --bytes
  type: string
- doc: at spaces
  id: spaces
  inputBinding:
    prefix: --spaces
  type: string
- doc: use WIDTH columns instead of 80
  id: width
  inputBinding:
    prefix: --width
  type: string
