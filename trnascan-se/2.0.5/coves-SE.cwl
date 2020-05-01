#!/usr/bin/env cwl-runner

baseCommand:
- coves-SE
class: CommandLineTool
cwlVersion: v1.0
id: coves-se
inputs:
- doc: ''
  id: coves
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: cm_file
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: seq_file
  inputBinding:
    position: 2
  type: string
- doc: ': show all pairs, not just Watson-Crick'
  id: a
  inputBinding:
    prefix: -a
  type: boolean
- doc: ': set expected background GC composition (default 0.5)'
  id: g
  inputBinding:
    prefix: -g
  type: string
- doc: ': mountain representation of structural alignment'
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: ': secondary structure string representation of  structural alignment'
  id: s
  inputBinding:
    prefix: -s
  type: boolean
