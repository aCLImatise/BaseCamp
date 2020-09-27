class: CommandLineTool
id: FastTree.cwl
inputs:
- id: in_fastest
  doc: "-- search the visible set (the top hit for each node) only\nUnlike the original\
    \ fast neighbor-joining, -fastest updates visible(C)\nafter joining A and B if\
    \ join(AB,C) is better than join(C,visible(C))"
  type: boolean
  inputBinding:
    prefix: -fastest
- id: in_to_pm
  doc: "-- set the top-hit list size to parameter*sqrt(N)\nFastTree estimates the\
    \ top m hits of a leaf from the\ntop 2*m hits of a 'close' neighbor, where close\
    \ is\ndefined as d(seed,close) < 0.75 * d(seed, hit of rank 2*m),\nand updates\
    \ the top-hits as joins proceed"
  type: long
  inputBinding:
    prefix: -topm
- id: in_close
  doc: -- modify the close heuristic, lower is more conservative
  type: long
  inputBinding:
    prefix: -close
- id: in_refresh
  doc: "-- compare a joined node to all other nodes if its\ntop-hit list is less than\
    \ 80% of the desired length,\nor if the age of the top-hit list is log2(m) or\
    \ greater"
  type: long
  inputBinding:
    prefix: -refresh
- id: in_bio_nj
  doc: ": weighted joins as in BIONJ (default)\nFastTree will also weight joins during\
    \ NNIs"
  type: boolean
  inputBinding:
    prefix: -bionj
- id: in_nj
  doc: ': regular (unweighted) neighbor-joining'
  type: boolean
  inputBinding:
    prefix: -nj
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- FastTree
