class: CommandLineTool
id: makeHKY.cwl
inputs:
- id: in_gc
  doc: "Define base composition according to specified G+C composition,\nassuming\
    \ P(A)=P(T) and P(C)=P(G).  Default is 0.4."
  type: double?
  inputBinding:
    prefix: --gc
- id: in_pi
  doc: "<pi_A,pi_C,pi_G,pi_T>\nOverride --gc and define base composition explicitly.\
    \  Values will\nbe renormalized to ensure they sum exactly to one."
  type: boolean?
  inputBinding:
    prefix: --pi
- id: in_branch_length
  doc: "Assume a tree consisting of a single branch of specified length.\nDefault\
    \ value is 1."
  type: long?
  inputBinding:
    prefix: --branch-length
- id: in_tree
  doc: Override --branch-length and use specified tree.
  type: long?
  inputBinding:
    prefix: --tree
- id: in_below_dot
  doc: 'OPTIONS:'
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
- makeHKY
