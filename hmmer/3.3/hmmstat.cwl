#!/usr/bin/env cwl-runner

baseCommand:
- hmmstat
class: CommandLineTool
cwlVersion: v1.0
id: hmmstat
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
