#!/usr/bin/env cwl-runner

baseCommand:
- hmmconvert
class: CommandLineTool
cwlVersion: v1.0
id: hmmconvert
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
