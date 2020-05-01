#!/usr/bin/env cwl-runner

baseCommand:
- base64
class: CommandLineTool
cwlVersion: v1.0
id: base64
inputs:
- doc: decode data
  id: decode
  inputBinding:
    prefix: --decode
  type: boolean
- doc: when decoding, ignore non-alphabet characters
  id: ignore_garbage
  inputBinding:
    prefix: --ignore-garbage
  type: boolean
- doc: wrap encoded lines after COLS character (default 76). Use 0 to disable line
    wrapping
  id: wrap
  inputBinding:
    prefix: --wrap
  type: string
