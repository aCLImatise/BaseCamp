#!/usr/bin/env cwl-runner

baseCommand:
- hmmfetch2
class: CommandLineTool
cwlVersion: v1.0
id: hmmfetch2
inputs:
- doc: ''
  id: hmm_fetch
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: hmm_file
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: hmm_name
  inputBinding:
    position: 2
  type: string
- doc: ': interpret <HMM name> instead as an HMM number (0..nhmm-1)'
  id: n
  inputBinding:
    prefix: -n
  type: boolean
