#!/usr/bin/env cwl-runner

baseCommand:
- stitch
class: CommandLineTool
cwlVersion: v1.0
id: stitch
inputs:
- doc: ''
  id: option
  inputBinding:
    position: 0
  type: string
- doc: Reverse complement the first mate, instead of the second
  id: out_ie
  inputBinding:
    prefix: --outie
  type: boolean
