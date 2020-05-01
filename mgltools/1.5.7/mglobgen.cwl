#!/usr/bin/env cwl-runner

baseCommand:
- mglobgen
class: CommandLineTool
cwlVersion: v1.0
id: mglobgen
inputs:
- doc: ''
  id: ob_gen
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: filename
  inputBinding:
    position: 1
  type: File
- doc: select a forcefield
  id: ff
  inputBinding:
    prefix: -ff
  type: boolean
