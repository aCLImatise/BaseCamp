#!/usr/bin/env cwl-runner

baseCommand:
- debruijn
class: CommandLineTool
cwlVersion: v1.0
id: debruijn
inputs:
- doc: word size [Integer]
  id: n
  inputBinding:
    prefix: -n
  type: boolean
- doc: alphabet
  id: a
  inputBinding:
    prefix: -a
  type: boolean
