#!/usr/bin/env cwl-runner

baseCommand:
- AnalyseDists
class: CommandLineTool
cwlVersion: v1.0
id: analysedists
inputs:
- doc: ''
  id: analyse_dist
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: swn
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: x
  inputBinding:
    prefix: -X
  type: boolean
