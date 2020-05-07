class: CommandLineTool
id: spoa.cwl
inputs:
- id: m
  doc: 'default: 5 score for matching bases'
  type: long
  inputBinding:
    prefix: -m
- id: n
  doc: 'default: -4 score for mismatching bases'
  type: long
  inputBinding:
    prefix: -n
- id: g
  doc: 'default: -8 gap opening penalty (must be non-positive)'
  type: long
  inputBinding:
    prefix: -g
- id: e
  doc: 'default: -6 gap extension penalty (must be non-positive)'
  type: long
  inputBinding:
    prefix: -e
- id: q
  doc: 'default: -10 gap opening penalty of the second affine function (must be non-positive)'
  type: long
  inputBinding:
    prefix: -q
- id: c
  doc: 'default: -4 gap extension penalty of the second affine function (must be non-positive)'
  type: long
  inputBinding:
    prefix: -c
- id: algorithm
  doc: 'default: 0 alignment mode: 0 - local (Smith-Waterman) 1 - global (Needleman-Wunsch)
    2 - semi-global'
  type: long
  inputBinding:
    prefix: --algorithm
- id: result
  doc: 'default: 0 result mode: 0 - consensus 1 - multiple sequence alignment 2 -
    0 & 1'
  type: long
  inputBinding:
    prefix: --result
- id: dot
  doc: output file for the final POA graph in DOT format
  type: File
  inputBinding:
    prefix: --dot
outputs: []
cwlVersion: v1.1
baseCommand:
- spoa
