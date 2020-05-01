#!/usr/bin/env cwl-runner

baseCommand:
- hmmindex2
class: CommandLineTool
cwlVersion: v1.0
id: hmmindex2
inputs:
- doc: ''
  id: hmm_index
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: hmm_file
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: options
  inputBinding:
    prefix: -options
  type: boolean
