class: CommandLineTool
id: ftreedistpair.cwl
inputs:
- id: in_d_type
  doc: "menu       [b] Distance type (Values: s (Symmetric\ndifference); b (Branch\
    \ score distance))"
  type: boolean
  inputBinding:
    prefix: -dtype
- id: in_pairing
  doc: "menu       [l] Tree pairing method (Values: c\n(Distances between corresponding\
    \ pairs each\ntree file); l (Distances between all\npossible pairs in each tree\
    \ file))"
  type: boolean
  inputBinding:
    prefix: -pairing
- id: in_style
  doc: "menu       [v] Distances output option (Values: f\n(Full_matrix); v (Verbose,\
    \ one pair per\nline); s (Sparse, one pair per line))"
  type: boolean
  inputBinding:
    prefix: -style
- id: in_no_root
  doc: boolean    [N] Trees to be treated as rooted
  type: boolean
  inputBinding:
    prefix: -noroot
- id: in_out_gr_no
  doc: "integer    [0] Species number to use as outgroup\n(Integer 0 or more)"
  type: boolean
  inputBinding:
    prefix: -outgrno
- id: in_progress
  doc: boolean    [N] Print indications of progress of run
  type: boolean
  inputBinding:
    prefix: -progress
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ftreedistpair
