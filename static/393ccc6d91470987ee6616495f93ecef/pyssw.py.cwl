class: CommandLineTool
id: pyssw.py.cwl
inputs:
- id: in_s_libpath
  doc: path of libssw.so
  type: File?
  inputBinding:
    prefix: --sLibPath
- id: in_n_match
  doc: "a positive integer as the score for a match in genome\nsequence alignment.\
    \ [default: 2]"
  type: long?
  inputBinding:
    prefix: --nMatch
- id: in_n_mismatch
  doc: "a positive integer as the score for a mismatch in\ngenome sequence alignment.\
    \ [default: 2]"
  type: long?
  inputBinding:
    prefix: --nMismatch
- id: in_n_open
  doc: "a positive integer as the penalty for the gap opening\nin genome sequence\
    \ alignment. [default: 3]"
  type: long?
  inputBinding:
    prefix: --nOpen
- id: in_next
  doc: "a positive integer as the penalty for the gap\nextension in genome sequence\
    \ alignment. [default: 1]"
  type: long?
  inputBinding:
    prefix: --nExt
- id: in_b_protien
  doc: "Do protein sequence alignment. Without this option,\nthe ssw_test will do\
    \ genome sequence alignment.\n[default: False]"
  type: boolean?
  inputBinding:
    prefix: --bProtien
- id: in_s_matrix
  doc: "a file for either Blosum or Pam weight matrix.\n[default: Blosum50]"
  type: File?
  inputBinding:
    prefix: --sMatrix
- id: in_b_path
  doc: 'Return the alignment path. [default: False]'
  type: boolean?
  inputBinding:
    prefix: --bPath
- id: in_n_thr
  doc: "a positive integer. Only output the alignments with\nthe Smith-Waterman score\
    \ >= N."
  type: long?
  inputBinding:
    prefix: --nThr
- id: in_b_best
  doc: "The best alignment will be picked between the original\nread alignment and\
    \ the reverse complement read\nalignment. [default: False]"
  type: boolean?
  inputBinding:
    prefix: --bBest
- id: in_b_sam
  doc: 'Output in SAM format. [default: no header]'
  type: boolean?
  inputBinding:
    prefix: --bSam
- id: in_b_header
  doc: If -s is used, include header in SAM output.
  type: boolean?
  inputBinding:
    prefix: --bHeader
- id: in_target
  doc: targe file
  type: string
  inputBinding:
    position: 0
- id: in_query
  doc: query file
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- pyssw.py
