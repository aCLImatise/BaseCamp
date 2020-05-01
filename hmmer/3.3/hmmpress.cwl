#!/usr/bin/env cwl-runner

baseCommand:
- hmmpress
class: CommandLineTool
cwlVersion: v1.0
id: hmmpress
inputs:
- doc: ''
  id: hmm_file
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: options
  inputBinding:
    prefix: -options
  type: boolean
