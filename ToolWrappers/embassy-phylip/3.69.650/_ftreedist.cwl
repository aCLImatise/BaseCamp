class: CommandLineTool
id: _ftreedist.cwl
inputs:
- id: in_d_type
  doc: "menu       [b] Distance type (Values: s (Symmetric\ndifference); b (Branch\
    \ score distance))"
  type: boolean
  inputBinding:
    prefix: -dtype
- id: in_pairing
  doc: "menu       [a] Tree pairing method (Values: a\n(Distances between adjacent\
    \ pairs in tree\nfile); p (Distances between all possible\npairs in tree file))"
  type: boolean
  inputBinding:
    prefix: -pairing
- id: in_style
  doc: "menu       [v] Distances output option (Values: f (Full\nmatrix); v (Verbose,\
    \ one pair per line); s\n(Sparse, one pair per line))"
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
- id: in_file
  doc: 'Additional (Optional) qualifiers:'
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- _ftreedist
