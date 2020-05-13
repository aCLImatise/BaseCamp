class: CommandLineTool
id: pyssw.py.cwl
inputs:
- id: target
  doc: targe file
  type: string
  inputBinding:
    position: 0
- id: query
  doc: query file
  type: string
  inputBinding:
    position: 1
- id: s_libpath
  doc: path of libssw.so
  type: string
  inputBinding:
    prefix: --sLibPath
- id: n_match
  doc: 'a positive integer as the score for a match in genome sequence alignment.
    [default: 2]'
  type: string
  inputBinding:
    prefix: --nMatch
- id: n_mismatch
  doc: 'a positive integer as the score for a mismatch in genome sequence alignment.
    [default: 2]'
  type: string
  inputBinding:
    prefix: --nMismatch
- id: n_open
  doc: 'a positive integer as the penalty for the gap opening in genome sequence alignment.
    [default: 3]'
  type: string
  inputBinding:
    prefix: --nOpen
- id: next
  doc: 'a positive integer as the penalty for the gap extension in genome sequence
    alignment. [default: 1]'
  type: string
  inputBinding:
    prefix: --nExt
- id: b_protien
  doc: 'Do protein sequence alignment. Without this option, the ssw_test will do genome
    sequence alignment. [default: False]'
  type: boolean
  inputBinding:
    prefix: --bProtien
- id: s_matrix
  doc: 'a file for either Blosum or Pam weight matrix. [default: Blosum50]'
  type: string
  inputBinding:
    prefix: --sMatrix
- id: b_path
  doc: 'Return the alignment path. [default: False]'
  type: boolean
  inputBinding:
    prefix: --bPath
- id: n_thr
  doc: a positive integer. Only output the alignments with the Smith-Waterman score
    >= N.
  type: string
  inputBinding:
    prefix: --nThr
- id: b_best
  doc: 'The best alignment will be picked between the original read alignment and
    the reverse complement read alignment. [default: False]'
  type: boolean
  inputBinding:
    prefix: --bBest
- id: b_sam
  doc: 'Output in SAM format. [default: no header]'
  type: boolean
  inputBinding:
    prefix: --bSam
- id: b_header
  doc: If -s is used, include header in SAM output.
  type: boolean
  inputBinding:
    prefix: --bHeader
outputs: []
cwlVersion: v1.1
baseCommand:
- pyssw.py
