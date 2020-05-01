#!/usr/bin/env cwl-runner

baseCommand:
- fwdppConfig
class: CommandLineTool
cwlVersion: v1.0
id: fwdppconfig
inputs:
- doc: ''
  id: print
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: out
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: version
  inputBinding:
    position: 2
  type: string
- doc: ''
  id: number
  inputBinding:
    position: 3
  type: string
- doc: ''
  id: and
  inputBinding:
    position: 4
  type: string
- doc: ''
  id: exit
  inputBinding:
    position: 5
  type: string
