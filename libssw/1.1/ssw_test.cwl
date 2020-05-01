#!/usr/bin/env cwl-runner

baseCommand:
- ssw_test
class: CommandLineTool
cwlVersion: v1.0
id: ssw_test
inputs:
- doc: 'N is a positive integer for weight match in genome sequence alignment. [default:
    2]'
  id: m
  inputBinding:
    prefix: -m
  type: string
- doc: 'N is a positive integer. -N will be used as weight mismatch in genome sequence
    alignment. [default: 2]'
  id: x
  inputBinding:
    prefix: -x
  type: string
- doc: 'N is a positive integer. -N will be used as the weight for the gap opening.
    [default: 3]'
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: 'N is a positive integer. -N will be used as the weight for the gap extension.
    [default: 1]'
  id: e
  inputBinding:
    prefix: -e
  type: string
- doc: Do protein sequence alignment. Without this option, the ssw_test will do genome
    sequence alignment.
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: 'FILE is either the Blosum or Pam weight matrix. [default: Blosum50]'
  id: a
  inputBinding:
    prefix: -a
  type: File
- doc: Return the alignment path.
  id: c
  inputBinding:
    prefix: -c
  type: boolean
- doc: N is a positive integer. Only output the alignments with the Smith-Waterman
    score >= N.
  id: f
  inputBinding:
    prefix: -f
  type: string
- doc: The best alignment will be picked between the original read alignment and the
    reverse complement read alignment.
  id: r
  inputBinding:
    prefix: -r
  type: boolean
- doc: 'Output in SAM format. [default: no header]'
  id: s
  inputBinding:
    prefix: -s
  type: boolean
