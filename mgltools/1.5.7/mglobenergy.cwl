#!/usr/bin/env cwl-runner

baseCommand:
- mglobenergy
class: CommandLineTool
cwlVersion: v1.0
id: mglobenergy
inputs:
- doc: ''
  id: ob_energy
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: filename
  inputBinding:
    position: 1
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
