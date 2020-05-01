#!/usr/bin/env cwl-runner

baseCommand:
- kinwalker
class: CommandLineTool
cwlVersion: v1.0
id: kinwalker
inputs:
- doc: ''
  id: options
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: seq_file
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: outfile
  inputBinding:
    position: 2
  type: string
- doc: Use test sequence.
  id: test
  inputBinding:
    prefix: --test
  type: boolean
- doc: Verbose mode. Print debugging messages about program progress.
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
