class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/make_ultrametric.py.cwl
inputs:
- id: root_age
  doc: Rescale branch lengths by a multiplicative factor to achieve requested root
    age
  type: string
  inputBinding:
    prefix: --root_age
- id: tree_fn
  doc: File containing a rooted tree in newick format
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- make_ultrametric.py
