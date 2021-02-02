class: CommandLineTool
id: nw_ed_filename|_.cwl
inputs:
- id: in_print_modified_tree
  doc: ": do not print the (possibly modified) tree at the end of the run\n(modeled\
    \ after sed -n)"
  type: boolean
  inputBinding:
    prefix: -n
- id: in_visit_tree_starting
  doc: ": visit tree in preorder (starting at root, and visiting a node\nbefore any\
    \ of its descendants). Default is post-order (ends at root\nand visits a node\
    \ after all its descendats)."
  type: boolean
  inputBinding:
    prefix: -r
- id: in_stop_processing_clade
  doc: ": stop processing a clade after the first match - that is, if a node\nmatches,\
    \ its descendants are not processed.\nNote: this option will automatically set\
    \ -r, as it makes no\nsense in post-order."
  type: boolean
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- nw_ed
- filename|-
