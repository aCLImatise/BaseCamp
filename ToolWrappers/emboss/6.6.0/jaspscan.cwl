class: CommandLineTool
id: jaspscan.cwl
inputs:
- id: in_menu
  doc: "menu       [C] Matrix set (Values: C (Core); F (Fam); P\n(Phylofacts); N (CNE);\
    \ O (POLII); S\n(SPLICE); B (PBM); L (PBM_HLH); H\n(PBM_HOMEO))"
  type: boolean
  inputBinding:
    prefix: -menu
- id: in_matrices
  doc: "string     [all] The name 'all' reads in all matrix\nfiles from the selected\n\
    JASPAR matrix set. You can specify\nindividual matrices by giving\ntheir names\
    \ with commas between then, such\nas:\n'ma0001.1,ma0015*'.\nThe case of the names\
    \ is not important. You\ncan specify a file of\nmatrix names to read in by giving\
    \ the name\nof the file holding the\nmatrix names with a '@' character in front\n\
    of it, for example,\n'@matrix.list'.\nBlank lines and lines starting with a hash\n\
    character or '!' are ignored and all other\nlines are concatenated together with\
    \ a comma\ncharacter ',' and then treated as the list\nof enzymes to search\n\
    for.\nAn example of a file of matrix names is:\n! my matrices\nma0001.1, ma0002.1\n\
    ! other matrices\nma0010.1\nma0032*\nma0053.1 (Any string)"
  type: boolean
  inputBinding:
    prefix: -matrices
- id: in_threshold
  doc: "float      [80.0] If the matrix score is greater than\nor equal to this percentage\n\
    then a hit will be reported (Any numeric\nvalue)"
  type: boolean
  inputBinding:
    prefix: -threshold
- id: in_exclude
  doc: "string     The names of any matrices to exclude from\nthe 'matrices'\nlist.\
    \ Matrices are specified in the same way\nas for the\nselection list. (Any string)"
  type: boolean
  inputBinding:
    prefix: -exclude
- id: in_both
  doc: "boolean    [N] If set then both the forward and reverse\nstrands are searched"
  type: boolean
  inputBinding:
    prefix: -both
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- jaspscan
