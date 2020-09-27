class: CommandLineTool
id: spoa.cwl
inputs:
- id: in_default_score_matching
  doc: "default: 5\nscore for matching bases"
  type: long
  inputBinding:
    prefix: -m
- id: in_default_score_mismatching
  doc: "default: -4\nscore for mismatching bases"
  type: long
  inputBinding:
    prefix: -n
- id: in_default_gap_opening_penalty_must
  doc: "default: -8\ngap opening penalty (must be non-positive)"
  type: long
  inputBinding:
    prefix: -g
- id: in_default_gap_extension_penalty_must
  doc: "default: -6\ngap extension penalty (must be non-positive)"
  type: long
  inputBinding:
    prefix: -e
- id: in_default_gap_opening_penalty_second
  doc: "default: -10\ngap opening penalty of the second affine function\n(must be\
    \ non-positive)"
  type: long
  inputBinding:
    prefix: -q
- id: in_default_gap_extension_penalty_second
  doc: "default: -4\ngap extension penalty of the second affine function\n(must be\
    \ non-positive)"
  type: long
  inputBinding:
    prefix: -c
- id: in_algorithm
  doc: "default: 0\nalignment mode:\n0 - local (Smith-Waterman)\n1 - global (Needleman-Wunsch)\n\
    2 - semi-global"
  type: long
  inputBinding:
    prefix: --algorithm
- id: in_result
  doc: "default: 0\nresult mode:\n0 - consensus\n1 - multiple sequence alignment\n\
    2 - 0 & 1"
  type: long
  inputBinding:
    prefix: --result
- id: in_dot
  doc: output file for the final POA graph in DOT format
  type: File
  inputBinding:
    prefix: --dot
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_dot
  doc: output file for the final POA graph in DOT format
  type: File
  outputBinding:
    glob: $(inputs.in_dot)
cwlVersion: v1.1
baseCommand:
- spoa
