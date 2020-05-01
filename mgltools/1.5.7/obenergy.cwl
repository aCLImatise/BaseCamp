#!/usr/bin/env cwl-runner

baseCommand:
- obenergy
class: CommandLineTool
cwlVersion: v1.0
id: obenergy
inputs:
- doc: ''
  id: filename
  inputBinding:
    position: 0
  type: File
- doc: 'verbose: print out indivual energy interactions'
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: 'select a forcefield available forcefields:'
  id: ff
  inputBinding:
    prefix: -ff
  type: string
