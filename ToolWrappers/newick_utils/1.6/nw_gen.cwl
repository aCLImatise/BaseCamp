class: CommandLineTool
id: nw_gen.cwl
inputs:
- id: in_sets_time_limit
  doc: ": sets the maximum depth (time limit). Default: 3.0\nOnly for time-limited\
    \ trees."
  type: double?
  inputBinding:
    prefix: -d
- id: in_generate_geometric_tree
  doc: ": generate a geometric tree instead of a time-limited one.\nEach node has\
    \ a fixed probability of having 2 children."
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_sets_length_default
  doc: ": sets the average branch length (default: 1.0)\nOnly for time-limited trees."
  type: double?
  inputBinding:
    prefix: -l
- id: in_sets_probability_node
  doc: ": sets the probability of a node having (2) children.\nOnly for geometric\
    \ trees. WARNING: if > 0.5, the tree will\nprobably grow 'forever'. On the other\
    \ hand, low values will\nresult in most trees having only a root, as the probability\n\
    that the root has no children is 1-p, like for every other node."
  type: double?
  inputBinding:
    prefix: -p
- id: in_sets_generators_seeddefault
  doc: ": sets the pseudorandom number generator's seed\n(default: 0.1)"
  type: long?
  inputBinding:
    prefix: -s
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- nw_gen
