#!/usr/bin/env cwl-runner

baseCommand:
- fqtrim
class: CommandLineTool
cwlVersion: v1.0
id: fqtrim
inputs:
- doc: 'minimum length of exact suffix-prefix match with adapter sequence that can
    be trimmed at either end of the read (default: 6)'
  id: a
  inputBinding:
    prefix: -a
  type: boolean
- doc: minimum percent identity for adapter match at 5' end (default 96.0)
  id: pid5
  inputBinding:
    prefix: --pid5
  type: boolean
- doc: minimum percent identity for adapter match at 3' end (default 94.0)
  id: pid3
  inputBinding:
    prefix: --pid3
  type: boolean
- doc: mismatch penalty for scoring the adapter alignment (default 3)
  id: mism
  inputBinding:
    prefix: --mism
  type: boolean
- doc: reward for scoring the adapter alignment (default 1)
  id: match
  inputBinding:
    prefix: --match
  type: string
- doc: also look for terminal alignments with the reverse complement of the adapter
    sequence(s)
  id: r
  inputBinding:
    prefix: -R
  type: boolean
