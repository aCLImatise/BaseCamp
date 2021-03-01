class: CommandLineTool
id: treebest_sdi.cwl
inputs:
- id: in_reroot
  doc: reroot
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_use_species_tree
  doc: use core species tree instead of the default one
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_reroot_minimizing_height
  doc: "reroot by minimizing tree height, instead of by\nminimizing the number of\
    \ duplication events."
  type: boolean?
  inputBinding:
    prefix: -H
- id: in_do_reorder_leaves
  doc: do not reorder the leaves.
  type: boolean?
  inputBinding:
    prefix: -R
- id: in_species_tree
  doc: species tree [default taxa tree]
  type: File?
  inputBinding:
    prefix: -s
- id: in_cut_subtree_contains
  doc: cut a subtree that contains genes whose species exist in list [null]
  type: File?
  inputBinding:
    prefix: -l
- id: in_compare_topology_reorder
  doc: compare topology with FILE and re-order the leaves [null]
  type: File?
  inputBinding:
    prefix: -m
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- treebest
- sdi
