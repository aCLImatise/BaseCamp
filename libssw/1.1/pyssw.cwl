#!/usr/bin/env cwl-runner

baseCommand:
- pyssw.py
class: CommandLineTool
cwlVersion: v1.0
id: pyssw.py
inputs:
- doc: targe file
  id: target
  inputBinding:
    position: 0
  type: string
- doc: query file
  id: query
  inputBinding:
    position: 1
  type: string
- doc: path of libssw.so
  id: s_libpath
  inputBinding:
    prefix: --sLibPath
  type: string
- doc: 'a positive integer as the score for a match in genome sequence alignment.
    [default: 2]'
  id: n_match
  inputBinding:
    prefix: --nMatch
  type: string
- doc: 'a positive integer as the score for a mismatch in genome sequence alignment.
    [default: 2]'
  id: n_mismatch
  inputBinding:
    prefix: --nMismatch
  type: string
- doc: 'a positive integer as the penalty for the gap opening in genome sequence alignment.
    [default: 3]'
  id: n_open
  inputBinding:
    prefix: --nOpen
  type: string
- doc: 'a positive integer as the penalty for the gap extension in genome sequence
    alignment. [default: 1]'
  id: next
  inputBinding:
    prefix: --nExt
  type: string
- doc: 'Do protein sequence alignment. Without this option, the ssw_test will do genome
    sequence alignment. [default: False]'
  id: b_protien
  inputBinding:
    prefix: --bProtien
  type: boolean
- doc: 'a file for either Blosum or Pam weight matrix. [default: Blosum50]'
  id: s_matrix
  inputBinding:
    prefix: --sMatrix
  type: string
- doc: 'Return the alignment path. [default: False]'
  id: b_path
  inputBinding:
    prefix: --bPath
  type: boolean
- doc: a positive integer. Only output the alignments with the Smith-Waterman score
    >= N.
  id: n_thr
  inputBinding:
    prefix: --nThr
  type: string
- doc: 'The best alignment will be picked between the original read alignment and
    the reverse complement read alignment. [default: False]'
  id: b_best
  inputBinding:
    prefix: --bBest
  type: boolean
- doc: 'Output in SAM format. [default: no header]'
  id: b_sam
  inputBinding:
    prefix: --bSam
  type: boolean
- doc: If -s is used, include header in SAM output.
  id: b_header
  inputBinding:
    prefix: --bHeader
  type: boolean
