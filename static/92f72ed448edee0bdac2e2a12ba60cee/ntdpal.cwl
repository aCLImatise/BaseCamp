class: CommandLineTool
id: ntdpal.cwl
inputs:
- id: in_scoring_matrix_modified
  doc: the scoring matrix to be modified by dpal_set_ambiguity_codes.
  type: string?
  inputBinding:
    prefix: -a
- id: in_end_postion_alignment
  doc: "the end postion of the alignment in both sequences to\nbe printed.  Do not\
    \ confuse with the 'e' <mode>."
  type: string?
  inputBinding:
    prefix: -e
- id: in_fone
  doc: ", f3\nforce specific implementations.\n-f2 forces use an implementation that\
    \ might provide more\ninformative error messages, possibly at the expense\nof\
    \ some speed."
  type: boolean?
  inputBinding:
    prefix: -f1
- id: in_different_scoring_matrix
  doc: "a different scoring matrix: G and C matches = 3, A and T = 2,\nand mismatches\
    \ = -0.5.\n(The default scoring matrix assigns 1 to a match,\nand -1 to a mismatch.)"
  type: double?
  inputBinding:
    prefix: -h
- id: in_alignment_displayed_stderr
  doc: the alignment to be displayed on stderr.
  type: string?
  inputBinding:
    prefix: -p
- id: in_only_score_printed
  doc: _only_ the score to printed.
  type: string?
  inputBinding:
    prefix: -s
- id: in_m
  doc: ''
  type: string?
  inputBinding:
    prefix: -m
- id: in_l
  doc: ''
  type: string?
  inputBinding:
    prefix: -l
- id: in_g
  doc: ''
  type: string?
  inputBinding:
    prefix: -g
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ntdpal
