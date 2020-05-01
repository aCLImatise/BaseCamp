#!/usr/bin/env cwl-runner

baseCommand:
- hmmfetch
class: CommandLineTool
cwlVersion: v1.0
id: hmmfetch
inputs:
- doc: ': second cmdline arg is a file of names to retrieve'
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: ': output HMM to file <f> instead of stdout'
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: ': output HMM to file named <key>'
  id: o
  inputBinding:
    prefix: -O
  type: boolean
- doc: ': index the <hmmfile>, creating <hmmfile>.ssi'
  id: index
  inputBinding:
    prefix: --index
  type: boolean
