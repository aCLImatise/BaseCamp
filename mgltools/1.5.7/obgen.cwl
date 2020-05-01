#!/usr/bin/env cwl-runner

baseCommand:
- obgen
class: CommandLineTool
cwlVersion: v1.0
id: obgen
inputs:
- doc: ''
  id: filename
  inputBinding:
    position: 0
  type: File
- doc: select a forcefield
  id: ff
  inputBinding:
    prefix: -ff
  type: boolean
