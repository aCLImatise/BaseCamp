class: CommandLineTool
id: edialign.cwl
inputs:
- id: in_overlap_w
  doc: "selection  [default (when Nseq =< 35)] By default\noverlap weights are used\
    \ when Nseq =<35 but\nyou can set this to 'yes' or 'no'"
  type: boolean?
  inputBinding:
    prefix: -overlapw
- id: in_linkage
  doc: "menu       [UPGMA] Clustering method to construct\nsequence tree (UPGMA, minimum\
    \ linkage or\nmaximum linkage) (Values: UPGMA (UPGMA); max\n(maximum linkage);\
    \ min (minimum linkage))"
  type: boolean?
  inputBinding:
    prefix: -linkage
- id: in_max_frag_l
  doc: "integer    [40] Maximum fragment length (Integer 0 or\nmore)"
  type: boolean?
  inputBinding:
    prefix: -maxfragl
- id: in_its_core
  doc: boolean    [N] Use iterative score
  type: boolean?
  inputBinding:
    prefix: -itscore
- id: in_threshold
  doc: "float      [0.0] Threshold for considering diagonal for\nalignment (Number\
    \ 0.000 or more)"
  type: boolean?
  inputBinding:
    prefix: -threshold
- id: in_mask
  doc: "boolean    [N] Replace unaligned characters by stars\n'*' rather then putting\
    \ them in lowercase"
  type: boolean?
  inputBinding:
    prefix: -mask
- id: in_do_stars
  doc: boolean    [N] Activate writing of stars instead of
  type: boolean?
  inputBinding:
    prefix: -dostars
- id: in_numbers
  doc: -starnum            integer    [4] Put up to n stars '*' instead of digits
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
- edialign
