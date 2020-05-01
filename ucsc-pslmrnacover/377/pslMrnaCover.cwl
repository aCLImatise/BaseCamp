#!/usr/bin/env cwl-runner

baseCommand:
- pslMrnaCover
class: CommandLineTool
cwlVersion: v1.0
id: pslmrnacover
inputs:
- doc: ''
  id: mrna_psl
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: mrna_fa
  inputBinding:
    position: 1
  type: string
- doc: 100.  Minimum size of mRNA considered
  id: default
  inputBinding:
    prefix: '- default'
  type: string
- doc: that don't align in zero.tab
  id: list_zero
  inputBinding:
    prefix: -listZero
  type: string
