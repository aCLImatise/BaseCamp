#!/usr/bin/env cwl-runner

baseCommand:
- rnabob
class: CommandLineTool
cwlVersion: v1.0
id: rnabob
inputs:
- doc: ':    search both strands of database'
  id: c
  inputBinding:
    prefix: -c
  type: boolean
- doc: ':    quiet: suppress verbose banner and headers'
  id: q
  inputBinding:
    prefix: -q
  type: boolean
- doc: ':    skip mode: disallow overlapping matches'
  id: s
  inputBinding:
    prefix: -s
  type: boolean
- doc: ':    fancy: show full alignments to pattern'
  id: f
  inputBinding:
    prefix: -F
  type: boolean
