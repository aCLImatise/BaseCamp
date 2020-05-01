#!/usr/bin/env cwl-runner

baseCommand:
- _cmfinder.pl
class: CommandLineTool
cwlVersion: v1.0
id: _cmfinder.pl
inputs:
- doc: Do not use BLAST search to locate anchors
  id: b
  inputBinding:
    prefix: -b
  type: boolean
- doc: The maximum number of candidates in each sequence. Default 40. No bigger than
    100.
  id: c
  inputBinding:
    prefix: -c
  type: string
- doc: The minimum length of candidates. Default 30
  id: m
  inputBinding:
    prefix: -m
  type: string
- doc: The maximum length of candidates. Default 100
  id: m
  inputBinding:
    prefix: -M
  type: string
- doc: The fraction of the sequences expected to contain the motif. Default 0.80
  id: f
  inputBinding:
    prefix: -f
  type: string
- doc: The max number of output single stem-loop motifs
  id: s1
  inputBinding:
    prefix: -s1
  type: string
- doc: 'The max number of output double stem-loop motifs    '
  id: s2
  inputBinding:
    prefix: -s2
  type: string
- doc: Combine the output motifs. Default False
  id: combine
  inputBinding:
    prefix: -combine
  type: boolean
- doc: Apply HMM filter for speed up. Default false.
  id: hmm
  inputBinding:
    prefix: -hmm
  type: boolean
- doc: '[FASTA|BLAST|NONE]      Methods to compute the anchors    '
  id: anchor
  inputBinding:
    prefix: -anchor
  type: boolean
