#!/usr/bin/env cwl-runner

baseCommand:
- drawmodel
class: CommandLineTool
cwlVersion: v1.0
id: drawmodel
inputs:
- doc: ''
  id: model_file
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: psfile
  inputBinding:
    position: 1
  type: string
- doc: '[n]      Draw first or nth model'
  id: mod
  inputBinding:
    prefix: -mod
  type: boolean
- doc: '[n]      Draw first or nth regularizer'
  id: reg
  inputBinding:
    prefix: -reg
  type: boolean
- doc: '[n]      Draw first or nth frequencies'
  id: freq
  inputBinding:
    prefix: -freq
  type: boolean
