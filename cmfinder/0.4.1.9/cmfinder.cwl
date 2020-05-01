#!/usr/bin/env cwl-runner

baseCommand:
- cmfinder
class: CommandLineTool
cwlVersion: v1.0
id: cmfinder
inputs:
- doc: ': the candidate file '
  id: c
  inputBinding:
    prefix: -c
  type: string
- doc: ': the initial motif alignment '
  id: a
  inputBinding:
    prefix: -a
  type: string
- doc: ': the initial covariance model'
  id: i
  inputBinding:
    prefix: -i
  type: string
- doc: ': the output motif structural alignment in stockholm format '
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: ': print intermediate alignments '
  id: v
  inputBinding:
    prefix: -v
  type: string
