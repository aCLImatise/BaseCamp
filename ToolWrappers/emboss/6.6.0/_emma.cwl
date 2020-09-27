class: CommandLineTool
id: _emma.cwl
inputs:
- id: in_only_d_end
  doc: toggle     [N] Only produce dendrogram file
  type: boolean
  inputBinding:
    prefix: -onlydend
- id: in_gap_open
  doc: "float      [10.0] The penalty for opening a gap in the\nalignment. Increasing\
    \ the gap opening\npenalty will make gaps less frequent.\n(Positive floating point\
    \ number)"
  type: boolean
  inputBinding:
    prefix: -gapopen
- id: in_gap_extend
  doc: "float      [5.0] The penalty for extending a gap by 1\nresidue. Increasing\
    \ the gap extension\npenalty will make gaps shorter. Terminal\ngaps are not penalised.\
    \ (Positive floating\npoint number)"
  type: boolean
  inputBinding:
    prefix: -gapextend
- id: in_gap_dist
  doc: "integer    [8] Gap separation distance: tries to\ndecrease the chances of\
    \ gaps being too close\nto each other. Gaps that are less than this\ndistance\
    \ apart are penalised more than\nother gaps. This does not prevent close\ngaps;\
    \ it makes them less frequent, promoting\na block-like appearance of the alignment.\n\
    (Positive integer)"
  type: boolean
  inputBinding:
    prefix: -gapdist
- id: in_max_div
  doc: "integer    [30] This switch, delays the alignment of\nthe most distantly related\
    \ sequences until\nafter the most closely related sequences\nhave been aligned.\
    \ The setting shows the\npercent identity level required to delay the\naddition\
    \ of a sequence; sequences that are\nless identical than this level to any other\n\
    sequences will be aligned later. (Integer\nfrom 0 to 100)"
  type: boolean
  inputBinding:
    prefix: -maxdiv
- id: in_similarity
  doc: 'scores: suppresses percentage score'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- _emma
