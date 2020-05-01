#!/usr/bin/env cwl-runner

baseCommand:
- covels-SE
class: CommandLineTool
cwlVersion: v1.0
id: covels-se
inputs:
- doc: ''
  id: cove_ls
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
- doc: ': do complementary strand too'
  id: c
  inputBinding:
    prefix: -c
  type: boolean
- doc: ': set background expected GC content (0.5 default)'
  id: g
  inputBinding:
    prefix: -g
  type: string
- doc: ': save hits in <file>'
  id: o
  inputBinding:
    prefix: -o
  type: File
- doc: ': set score reporting threshold'
  id: t
  inputBinding:
    prefix: -t
  type: string
- doc: ': set scanning window size'
  id: w
  inputBinding:
    prefix: -w
  type: string
- doc: ': save name of last sequence processed'
  id: d
  inputBinding:
    prefix: -D
  type: File
- doc: ': set epsilon for fast search'
  id: e
  inputBinding:
    prefix: -E
  type: boolean
- doc: ': fast heuristic search'
  id: f
  inputBinding:
    prefix: -F
  type: boolean
