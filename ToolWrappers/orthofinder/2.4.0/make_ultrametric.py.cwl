class: CommandLineTool
id: make_ultrametric.py.cwl
inputs:
- id: in_root_age
  doc: "Rescale branch lengths by a multiplicative factor to\nachieve requested root\
    \ age\n"
  type: string?
  inputBinding:
    prefix: --root_age
- id: in_tree_fn
  doc: File containing a rooted tree in newick format
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
- make_ultrametric.py
