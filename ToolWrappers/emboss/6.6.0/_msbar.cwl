class: CommandLineTool
id: _msbar.cwl
inputs:
- id: in_count
  doc: "integer    [1] Number of times to perform the mutation\noperations (Integer\
    \ 0 or more)"
  type: boolean?
  inputBinding:
    prefix: -count
- id: in_menu_types_point
  doc: "menu       [0] Types of point mutations to perform\n(Values: 0 (None); 1 (Any\
    \ of the following);\n2 (Insertions); 3 (Deletions); 4 (Changes);\n5 (Duplications);\
    \ 6 (Moves))"
  type: boolean?
  inputBinding:
    prefix: -point
- id: in_block
  doc: "menu       [0] Types of block mutations to perform\n(Values: 0 (None); 1 (Any\
    \ of the following);\n2 (Insertions); 3 (Deletions); 4 (Changes);\n5 (Duplications);\
    \ 6 (Moves))"
  type: boolean?
  inputBinding:
    prefix: -block
- id: in_other_sequence
  doc: "seqall     [asis:N] If you require that the resulting\nmutated sequence should\
    \ not match a set of\nother sequences, then you can specify that\nset of sequences\
    \ here. For example, if you\nrequire that the mutated sequence should not\nbe\
    \ the same as the input sequence, enter\nthe input sequence here. If you want\
    \ the\nresult to be different to previous results\nof this program, specify the\
    \ previous result\nsequences here. The program will check that\nthe result does\
    \ not match the sequences\nspecified here before writing it out. If a\nmatch is\
    \ found, then the mutation is started\nagain with a fresh copy of the input\n\
    sequence. If, after 10 such retries, there\nis still a match to the set of sequence\n\
    given here, then the matching mutated\nsequence is written with a warning message."
  type: boolean?
  inputBinding:
    prefix: -othersequence
- id: in_minimum
  doc: "integer    [1] Minimum size for a block mutation\n(Integer 0 or more)"
  type: boolean?
  inputBinding:
    prefix: -minimum
- id: in_maximum
  doc: "integer    [10] Maximum size for a block mutation (Any\ninteger value)"
  type: boolean?
  inputBinding:
    prefix: -maximum
- id: in_frame
  doc: 'Advanced (Unprompted) qualifiers:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- _msbar
