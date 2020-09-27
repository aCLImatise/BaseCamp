class: CommandLineTool
id: mp3treesim.cwl
inputs:
- id: in_run_mptreesim_intersection
  doc: Run MP3-treesim in Intersection mode.
  type: boolean
  inputBinding:
    prefix: -i
- id: in_run_mptreesim_union
  doc: Run MP3-treesim in Union mode.
  type: boolean
  inputBinding:
    prefix: -u
- id: in_run_mptreesim_geometric
  doc: Run MP3-treesim in Geometric mode.
  type: boolean
  inputBinding:
    prefix: -g
- id: in_cores
  doc: Number of cores to be used in computation.
  type: long
  inputBinding:
    prefix: --cores
- id: in_labeled_only
  doc: "Ingore nodes without \"label\" attribute. The trees will\nbe interpred as\
    \ partially-label trees."
  type: boolean
  inputBinding:
    prefix: --labeled-only
- id: in_exclude
  doc: "[EXCLUDE [EXCLUDE ...]]\nString(s) of comma separated labels to exclude from\n\
    computation. If only one string is provided the labels\nwill be excluded from\
    \ both trees. If two strings are\nprovided they will be excluded from the respective\n\
    tree. E.g.: --exclude \"A,D,E\" will exclude labels from\nboth trees; --exclude\
    \ \"A,B\" \"C,F\" will exclude A,B\nfrom Tree 1 and C,F from Tree 2; --exclude\
    \ \"\" \"C\" will\nexclude and C from Tree 2 and nothing from Tree 1\n"
  type: boolean
  inputBinding:
    prefix: --exclude
- id: in_tree
  doc: Paths to the trees
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mp3treesim
