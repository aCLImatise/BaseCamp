#!/usr/bin/env cwl-runner

baseCommand:
- diff_motif
class: CommandLineTool
cwlVersion: v1.0
id: diff_motif
inputs:
- doc: ''
  id: motif1
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: motif2
  inputBinding:
    position: 1
  type: string
- doc: ': Show overlapped sequences '
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: ': Show sequences in motif1 that are not in motif2'
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: ': Show sequences in motif2 that are not in motif1'
  id: f
  inputBinding:
    prefix: -f
  type: boolean
