#!/usr/bin/env cwl-runner

baseCommand:
- repeat-match
class: CommandLineTool
cwlVersion: v1.0
id: repeat-match
inputs:
- doc: ''
  id: genome_file
  inputBinding:
    position: 0
  type: string
- doc: Use exhaustive (slow) search to find matches
  id: e
  inputBinding:
    prefix: -E
  type: boolean
- doc: Forward strand only, don't use reverse complement
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: '#  Set minimum exact match length to #'
  id: n
  inputBinding:
    prefix: -n
  type: boolean
- doc: Only output tandem repeats
  id: t
  inputBinding:
    prefix: -t
  type: boolean
- doc: '#  Set level of verbose (debugging) printing to #'
  id: v
  inputBinding:
    prefix: -V
  type: boolean
