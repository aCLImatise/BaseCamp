#!/usr/bin/env cwl-runner

baseCommand:
- LAcheck
class: CommandLineTool
cwlVersion: v1.0
id: lacheck
inputs:
- doc: ': Verbose mode, output error messages.'
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: ': Check that .las is in sorted order.'
  id: s
  inputBinding:
    prefix: -S
  type: boolean
- doc: ': If -S, then check sorted by A-read, A-position pairs off => check sorted
    by A,B-read pairs (LA-piles)'
  id: a
  inputBinding:
    prefix: -a
  type: boolean
